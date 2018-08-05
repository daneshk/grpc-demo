import ballerina/grpc;
import ballerina/io;

service<grpc:Service> hello bind { port: 9090 } {

    ping(endpoint caller) {
        io:println("pinged service");
    }
}
