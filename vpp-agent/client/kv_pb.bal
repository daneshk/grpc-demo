

type KeyValue record {
    byte[] key;
    int create_revision;
    int mod_revision;
    int int_version;
    byte[] value;
    int lease;
    
};


type Event record {
    EventType eventtype_type;
    KeyValue kv;
    KeyValue prev_kv;
    
};

public type EventType "PUT"|"DELETE";
@final public EventType EVENTTYPE_PUT = "PUT";
@final public EventType EVENTTYPE_DELETE = "DELETE";



