import ballerina/io;
import ballerina/grpc;

function main(string... args) {

    endpoint HelloWorldBlockingClient helloWorldBlockingEp {
        url: "http://localhost:9090"
    };

    HelloRequest req = { name: "Sam" };
    var unionResp = helloWorldBlockingEp->hello(req);
    match unionResp {
        (HelloResponse, grpc:Headers) payload => {
            HelloResponse resp;
            (resp, _) = payload;
            io:println("Response Message: " + resp.message);
        }
        error err => {
            io:println("Error Message: " + err.message);
        }
    }
}


