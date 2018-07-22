import ballerina/io;
import ballerina/grpc;

// service endpoint configuration
endpoint grpc:Listener ep {
    host:"localhost",
    port:9090
};

// service impl
service HelloWorld bind ep {

    hello(endpoint caller, HelloRequest req) {
        io:println("name: " + req.name);
        string respMsg = "Hello " + req.name;
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
