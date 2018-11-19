import ballerina/io;
import ballerina/grpc;

public function main (string... args) {
     endpoint KVClient ep {
        url:"http://localhost:9090"
     };

    endpoint KVBlockingClient blockingEp {
        url:"http://localhost:9090"
    };
    RangeRequest req = {};
    req.sort_order = SortOrder.SORTORDER_NONE;
    req.sort_target = SortTarget.SORTTARGET_KEY;
    _ = blockingEp->Range(req);
}

service<grpc:Service> KVMessageListener {

    onMessage (string message) {
        io:println("Response received from server: " + message);
    }

    onError (error err) {
        if (err != ()) {
            io:println("Error reported from server: " + err.message);
        }
    }

    onComplete () {
        io:println("Server Complete Sending Responses.");
    }
}
