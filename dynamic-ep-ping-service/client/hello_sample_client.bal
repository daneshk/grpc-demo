import ballerina/io;
import ballerina/grpc;
import ballerina/config;

function main (string... args) {

    endpoint helloBlockingClient helloEp;

    map<string> servers = { "a": "http://localhost:9091",
        "b": "http://localhost:9092",
        "c": "http://localhost:9093",
        "d": "http://localhost:9090"};

    map<helloBlockingClient> clients;

    foreach k,address in servers {
        grpc:ClientEndpointConfig conf = {};
        conf.url = <string>address;
        helloBlockingClient helloBlockingEp = new;
        helloBlockingEp.init(conf);
        clients[address] = helloBlockingEp;
        io:println("Initialize address: " + address);
    }

    foreach k,ep in clients {
        helloEp = ep;
        grpc:Headers|error resp = helloEp->ping();
        match resp {
            grpc:Headers headers => {
                io:println(k + " connected successfully");
            }
            error err => {
                io:println(err.message);
            }
        }
    }
}


