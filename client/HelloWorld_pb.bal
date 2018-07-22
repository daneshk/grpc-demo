import ballerina/grpc;
import ballerina/io;

public type HelloWorldBlockingStub object {
    
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function hello (HelloRequest req, grpc:Headers? headers = ()) returns ((HelloResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("service.HelloWorld/hello", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                any result;
                grpc:Headers resHeaders;
                (result, resHeaders) = payload;
                return (check <HelloResponse>result, resHeaders);
            }
        }
    }
    
};

public type HelloWorldStub object {
    
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function hello (HelloRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        return self.stub.nonBlockingExecute("service.HelloWorld/hello", req, listener, headers = headers);
    }
    
};


public type HelloWorldBlockingClient object {
    
    public grpc:Client client;
    public HelloWorldBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        HelloWorldBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns (HelloWorldBlockingStub) {
        return self.stub;
    }
};

public type HelloWorldClient object {
    
    public grpc:Client client;
    public HelloWorldStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        HelloWorldStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns (HelloWorldStub) {
        return self.stub;
    }
};


type HelloRequest record {
    string name;
    int age;
    
};

type HelloResponse record {
    string message;
    
};


@final string DESCRIPTOR_KEY = "service.target/grpc/HelloWorld.proto";
map descriptorMap =
{ 
    "service.target/grpc/HelloWorld.proto":"0A1C7461726765742F677270632F48656C6C6F576F726C642E70726F746F12077365727669636522340A0C48656C6C6F5265717565737412120A046E616D6518012001280952046E616D6512100A03616765180220012803520361676522290A0D48656C6C6F526573706F6E736512180A076D65737361676518012001280952076D65737361676532440A0A48656C6C6F576F726C6412360A0568656C6C6F12152E736572766963652E48656C6C6F526571756573741A162E736572766963652E48656C6C6F526573706F6E7365620670726F746F33"
  
};
