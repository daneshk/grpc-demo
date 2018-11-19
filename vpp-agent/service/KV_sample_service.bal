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
service KV bind listener {

    Range(endpoint caller, RangeRequest value) {
        // Implementation goes here.
        io:println("Service invoked.");
        io:println(value);
        RangeResponse response = {};
        response.count = 1;
        _ = caller->send(response);
            // You should return a RangeResponse
    }
}
