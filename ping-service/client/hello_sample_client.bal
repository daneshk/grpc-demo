import ballerina/io;
import ballerina/grpc;

function main (string... args) {

    endpoint helloBlockingClient helloBlockingEp {
        url:"http://localhost:9090"
    };

    _ = helloBlockingEp->ping();
}


