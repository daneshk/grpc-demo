

type Http record {
    HttpRule[] rules;
    boolean fully_decode_reserved_expansion;
    
};


type HttpRule record {
    string selector;
    string body;
    string response_body;
    HttpRule[] additional_bindings;
    Pattern pattern;
};

public type Pattern HttpRule_Get|HttpRule_Put|HttpRule_Post|HttpRule_Delete|HttpRule_Patch|HttpRule_Custom;

type HttpRule_Get record {
    string get;
    
};

type HttpRule_Put record {
    string put;
    
};

type HttpRule_Post record {
    string post;
    
};

type HttpRule_Delete record {
    string delete;
    
};

type HttpRule_Patch record {
    string patch;
    
};

type HttpRule_Custom record {
    CustomHttpPattern custom;
    
};


type CustomHttpPattern record {
    string kind;
    string path;
    
};



