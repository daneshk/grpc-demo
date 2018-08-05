import ballerina/grpc;
import ballerina/io;

public type helloBlockingStub object {
    
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function ping (grpc:Headers? headers = ()) returns (( grpc:Headers)|error) {
        Empty req = {};
        var unionResp = self.stub.blockingExecute("service.hello/ping", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                any result;
                grpc:Headers resHeaders;
                (_, resHeaders) = payload;
                return resHeaders;
            }
        }
    }
    
};

public type helloStub object {
    
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function ping (typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        Empty req = {};
        return self.stub.nonBlockingExecute("service.hello/ping", req, listener, headers = headers);
    }
    
};


public type helloBlockingClient object {
    
    public grpc:Client client;
    public helloBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        helloBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns (helloBlockingStub) {
        return self.stub;
    }
};

public type helloClient object {
    
    public grpc:Client client;
    public helloStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        helloStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns (helloStub) {
        return self.stub;
    }
};


type Empty record {
    
};


@final string DESCRIPTOR_KEY = "service.target/grpc/hello.proto";
map descriptorMap =
{ 
    "service.target/grpc/hello.proto":"0A177461726765742F677270632F68656C6C6F2E70726F746F1207736572766963651A1B676F6F676C652F70726F746F6275662F656D7074792E70726F746F323F0A0568656C6C6F12360A0470696E6712162E676F6F676C652E70726F746F6275662E456D7074791A162E676F6F676C652E70726F746F6275662E456D707479620670726F746F33",
  
    "google.protobuf.empty.proto":"0A0B656D7074792E70726F746F120F676F6F676C652E70726F746F62756622070A05456D70747942540A13636F6D2E676F6F676C652E70726F746F627566420A456D70747950726F746F50015A057479706573F80101A20203475042AA021E476F6F676C652E50726F746F6275662E57656C6C4B6E6F776E5479706573620670726F746F33"
  
};
