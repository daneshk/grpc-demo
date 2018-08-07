// This is client implementation for unary blocking scenario.
import ballerina/io;
import ballerina/grpc;
import ballerina/http;

endpoint http:Listener serverEP {
    port: 8080
};

// Client endpoint configuration
endpoint HelloWorldBlockingClient helloWorldBlockingEp {
    url: "http://localhost:9090"
};

@http:ServiceConfig {
    basePath: "/proxy"
}
service<http:Service> proxy bind serverEP {

    @Description { value: "Proxy server forward the inbound request to gRPC backend service." }
    @http:ResourceConfig {
        methods:["GET"],
        path: "/"
    }
    sample(endpoint caller, http:Request req) {
        // Writes custom headers to request message.
        grpc:Headers headers = new;
        headers.setEntry("client_header_key", "Request Header Value");

        // The client starts sending the payload once it receives the 100-continue response.
        // Retrieve the payload that is sent by the client.
        http:Response res = new;
        match req.getTextPayload() {
            string reqPayload => {
                io:println(reqPayload);
                // Executes unary blocking call with headers.
                var unionResp = helloWorldBlockingEp->hello(reqPayload, headers = headers);
                // Reads message and headers from response.
                match unionResp {
                    (string, grpc:Headers) resPayload => {
                        string result;
                        grpc:Headers resHeaders;
                        (result, resHeaders) = resPayload;
                        io:println("Client Got Response : ");
                        io:println(result);
                        string headerValue = resHeaders.get("server_header_key") ?: "none";
                        io:println("Headers: " + headerValue );
                        res.statusCode = 200;
                        res.setPayload(result);
                        caller->respond(res) but {
                            error e => io:println("Error sending response" + e.message)
                        };
                    }
                    error err => {
                        io:println("Error from Connector: " + err.message);
                        res.statusCode = 500;
                        res.setPayload(untaint err.message);
                        caller->respond(res) but {
                            error e => io:println("Error sending response" + e.message)
                        };
                    }
                }
            }
            error err => {
                res.statusCode = 500;
                res.setPayload(untaint err.message);
                caller->respond(res) but {
                    error e => io:println("Error sending response" + e.message)
                };
            }
        }
    }
}


