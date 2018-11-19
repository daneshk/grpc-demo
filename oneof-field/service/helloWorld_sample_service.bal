import ballerina/grpc;
import ballerina/io;

endpoint grpc:Listener listener {
    host:"0.0.0.0",
    port:9000
};

@grpc:ServiceDescriptor {
    descriptor: <string>descriptorMap[DESCRIPTOR_KEY],
    descMap: descriptorMap
}
service helloWorld bind listener {

    hello(endpoint caller, HelloRequest value) {
        io:println(value);
        string request;
        match value.request {
            HelloRequest_FirstName firstName => {
                request = firstName.first_name;
            }
            HelloRequest_LastName lastName => {
                request = lastName.last_name;
            }
        }
        HelloResponse response = {message: "Hello " + request};
        _ = caller->send(response);
        _ = caller->complete();
    }
}

