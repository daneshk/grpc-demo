import ballerina/io;
import ballerina/grpc;

// service endpoint configuration
endpoint grpc:Listener ep {
    host:"localhost",
    port:9091
};

// Client endpoint configuration
endpoint HelloWorldBlockingClient helloWorldBlockingEp {
   url: "http://localhost:9090"
};

// service impl
service HelloWorld bind ep {

    hello(endpoint caller, HelloRequest req) {
        io:println("name: " + req.name);

    	// Executes unary blocking call with headers.
    	var unionResp = helloWorldBlockingEp->hello(req.name);
	string respMsg;
    	// Reads message and headers from response.
    	match unionResp {
        	(string, grpc:Headers) payload => {
            		(respMsg, _) = payload;
            		io:println("Client Got Response : ");
            		io:println(respMsg);
        	}
        	error err => {
            		io:println("Error from Connector: " + err.message);
        	}
    	}
        HelloResponse resp = {message: respMsg};

        error? err = caller->send(resp);
        io:println(err.message but { () => "Server send response : " + resp.message });

        _ = caller->complete();
    }
}

// request message
type HelloRequest record {
    string name;
    int age;
};

// response message
type HelloResponse record {
    string message;
};
