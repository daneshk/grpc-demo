import ballerina/io;
import ballerina/grpc;

function main (string... args) {

    endpoint HelloWorldBlockingClient helloWorldBlockingEp {
        url:"http://localhost:9090"
    };

}


