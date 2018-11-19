import ballerina/grpc;
import ballerina/io;

public type helloWorldBlockingStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function hello (HelloRequest req, grpc:Headers? headers = ()) returns ((HelloResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("grpcservices.helloWorld/hello", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <HelloResponse>result, resHeaders);
            }
        }
    }
    
};

public type helloWorldStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function hello (HelloRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("grpcservices.helloWorld/hello", req, listener, headers = headers);
    }
    
};


public type helloWorldBlockingClient object {
    public grpc:Client client;
    public helloWorldBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        helloWorldBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns helloWorldBlockingStub {
        return self.stub;
    }
};

public type helloWorldClient object {
    public grpc:Client client;
    public helloWorldStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        helloWorldStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns helloWorldStub {
        return self.stub;
    }
};

type HelloRequest record {
    Request request;
};

public type Request HelloRequest_FirstName|HelloRequest_LastName;

type HelloRequest_FirstName record {
    string first_name;
    
};

type HelloRequest_LastName record {
    string last_name;
    
};


type HelloResponse record {
    string message;
    
};



@final string DESCRIPTOR_KEY = "oneof_field_service.proto";
map descriptorMap = {
"oneof_field_service.proto":"0A196F6E656F665F6669656C645F736572766963652E70726F746F120C67727063736572766963657322590A0C48656C6C6F52657175657374121F0A0A66697273745F6E616D651801200128094800520966697273744E616D65121D0A096C6173745F6E616D65180220012809480052086C6173744E616D6542090A077265717565737422290A0D48656C6C6F526573706F6E736512180A076D65737361676518012001280952076D657373616765324E0A0A68656C6C6F576F726C6412400A0568656C6C6F121A2E6772706373657276696365732E48656C6C6F526571756573741A1B2E6772706373657276696365732E48656C6C6F526573706F6E7365620670726F746F33"

};
