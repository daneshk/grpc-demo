import ballerina/grpc;
import ballerina/io;
import ballerina/config;

service<grpc:Service> hello bind { port: config:getAsInt("service_port", default = 9090) } {

    ping(endpoint caller) {
        io:println("pinged service");
    }
}
