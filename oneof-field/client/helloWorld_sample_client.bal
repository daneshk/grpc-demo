import ballerina/io;
import ballerina/grpc;

public function main (string... args) {
    endpoint helloWorldBlockingClient blockingEp {
        url:"http://localhost:9090"
    };

    HelloRequest_FirstName firstName = {first_name:"Danesh"};
    HelloRequest helloRequest = {request: firstName};

    var response = blockingEp->hello(helloRequest);
    match response {
        (HelloResponse, grpc:Headers) result => {
            HelloResponse helloResp;
            (helloResp, _) = result;
            io:println(helloResp); 
        }
        error err => {
            io:println(err);
        }
    }
}

