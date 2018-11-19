type User record {
    byte[] name;
    byte[] password;
    string[] roles;
    
};

type Permission record {
    Type permType;
    byte[] key;
    byte[] range_end;
    
};

public type Type "READ"|"WRITE"|"READWRITE";
@final public Type TYPE_READ = "READ";
@final public Type TYPE_WRITE = "WRITE";
@final public Type TYPE_READWRITE = "READWRITE";

type Role record {
    byte[] name;
    Permission[] keyPermission;
    
};
