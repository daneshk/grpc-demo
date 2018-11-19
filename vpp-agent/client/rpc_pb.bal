import ballerina/grpc;
import ballerina/io;

public type KVBlockingStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function Range (RangeRequest req, grpc:Headers? headers = ()) returns ((RangeResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.KV/Range", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <RangeResponse>result, resHeaders);
            }
        }
    }
    
    function Put (PutRequest req, grpc:Headers? headers = ()) returns ((PutResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.KV/Put", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <PutResponse>result, resHeaders);
            }
        }
    }
    
    function DeleteRange (DeleteRangeRequest req, grpc:Headers? headers = ()) returns ((DeleteRangeResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.KV/DeleteRange", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <DeleteRangeResponse>result, resHeaders);
            }
        }
    }
    
    function Txn (TxnRequest req, grpc:Headers? headers = ()) returns ((TxnResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.KV/Txn", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <TxnResponse>result, resHeaders);
            }
        }
    }
    
    function Compact (CompactionRequest req, grpc:Headers? headers = ()) returns ((CompactionResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.KV/Compact", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <CompactionResponse>result, resHeaders);
            }
        }
    }
    
};

public type KVStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function Range (RangeRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.KV/Range", req, listener, headers = headers);
    }
    
    function Put (PutRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.KV/Put", req, listener, headers = headers);
    }
    
    function DeleteRange (DeleteRangeRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.KV/DeleteRange", req, listener, headers = headers);
    }
    
    function Txn (TxnRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.KV/Txn", req, listener, headers = headers);
    }
    
    function Compact (CompactionRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.KV/Compact", req, listener, headers = headers);
    }
    
};

public type WatchStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function Watch (typedesc listener, grpc:Headers? headers = ()) returns (grpc:Client| error)  {
        var res = self.stub.streamingExecute("etcdserverpb.Watch/Watch", listener, headers = headers);
        match res {
            error err => {
                return err;
            }
            grpc:Client con => {
                return con;
            }
        }
    }
};

public type LeaseBlockingStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function LeaseGrant (LeaseGrantRequest req, grpc:Headers? headers = ()) returns ((LeaseGrantResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Lease/LeaseGrant", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <LeaseGrantResponse>result, resHeaders);
            }
        }
    }
    
    function LeaseRevoke (LeaseRevokeRequest req, grpc:Headers? headers = ()) returns ((LeaseRevokeResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Lease/LeaseRevoke", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <LeaseRevokeResponse>result, resHeaders);
            }
        }
    }
    
    function LeaseTimeToLive (LeaseTimeToLiveRequest req, grpc:Headers? headers = ()) returns ((LeaseTimeToLiveResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Lease/LeaseTimeToLive", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <LeaseTimeToLiveResponse>result, resHeaders);
            }
        }
    }
    
    function LeaseLeases (LeaseLeasesRequest req, grpc:Headers? headers = ()) returns ((LeaseLeasesResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Lease/LeaseLeases", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <LeaseLeasesResponse>result, resHeaders);
            }
        }
    }
    
    function LeaseKeepAlive (typedesc listener, grpc:Headers? headers = ()) returns (grpc:Client| error)  {
        var res = self.stub.streamingExecute("etcdserverpb.Lease/LeaseKeepAlive", listener, headers = headers);
        match res {
            error err => {
                return err;
            }
            grpc:Client con => {
                return con;
            }
        }
    }
};

public type LeaseStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function LeaseGrant (LeaseGrantRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Lease/LeaseGrant", req, listener, headers = headers);
    }
    
    function LeaseRevoke (LeaseRevokeRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Lease/LeaseRevoke", req, listener, headers = headers);
    }
    
    function LeaseTimeToLive (LeaseTimeToLiveRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Lease/LeaseTimeToLive", req, listener, headers = headers);
    }
    
    function LeaseLeases (LeaseLeasesRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Lease/LeaseLeases", req, listener, headers = headers);
    }
    
    function LeaseKeepAlive (typedesc listener, grpc:Headers? headers = ()) returns (grpc:Client| error)  {
        var res = self.stub.streamingExecute("etcdserverpb.Lease/LeaseKeepAlive", listener, headers = headers);
        match res {
            error err => {
                return err;
            }
            grpc:Client con => {
                return con;
            }
        }
    }
};

public type ClusterBlockingStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function MemberAdd (MemberAddRequest req, grpc:Headers? headers = ()) returns ((MemberAddResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Cluster/MemberAdd", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <MemberAddResponse>result, resHeaders);
            }
        }
    }
    
    function MemberRemove (MemberRemoveRequest req, grpc:Headers? headers = ()) returns ((MemberRemoveResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Cluster/MemberRemove", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <MemberRemoveResponse>result, resHeaders);
            }
        }
    }
    
    function MemberUpdate (MemberUpdateRequest req, grpc:Headers? headers = ()) returns ((MemberUpdateResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Cluster/MemberUpdate", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <MemberUpdateResponse>result, resHeaders);
            }
        }
    }
    
    function MemberList (MemberListRequest req, grpc:Headers? headers = ()) returns ((MemberListResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Cluster/MemberList", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <MemberListResponse>result, resHeaders);
            }
        }
    }
    
};

public type ClusterStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function MemberAdd (MemberAddRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Cluster/MemberAdd", req, listener, headers = headers);
    }
    
    function MemberRemove (MemberRemoveRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Cluster/MemberRemove", req, listener, headers = headers);
    }
    
    function MemberUpdate (MemberUpdateRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Cluster/MemberUpdate", req, listener, headers = headers);
    }
    
    function MemberList (MemberListRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Cluster/MemberList", req, listener, headers = headers);
    }
    
};

public type MaintenanceBlockingStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function Alarm (AlarmRequest req, grpc:Headers? headers = ()) returns ((AlarmResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Maintenance/Alarm", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AlarmResponse>result, resHeaders);
            }
        }
    }
    
    function Status (StatusRequest req, grpc:Headers? headers = ()) returns ((StatusResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Maintenance/Status", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <StatusResponse>result, resHeaders);
            }
        }
    }
    
    function Defragment (DefragmentRequest req, grpc:Headers? headers = ()) returns ((DefragmentResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Maintenance/Defragment", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <DefragmentResponse>result, resHeaders);
            }
        }
    }
    
    function Hash (HashRequest req, grpc:Headers? headers = ()) returns ((HashResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Maintenance/Hash", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <HashResponse>result, resHeaders);
            }
        }
    }
    
    function HashKV (HashKVRequest req, grpc:Headers? headers = ()) returns ((HashKVResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Maintenance/HashKV", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <HashKVResponse>result, resHeaders);
            }
        }
    }
    
    function MoveLeader (MoveLeaderRequest req, grpc:Headers? headers = ()) returns ((MoveLeaderResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Maintenance/MoveLeader", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <MoveLeaderResponse>result, resHeaders);
            }
        }
    }
    
    function Snapshot (SnapshotRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/Snapshot", req, listener, headers = headers);
    }
    
};

public type MaintenanceStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function Alarm (AlarmRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/Alarm", req, listener, headers = headers);
    }
    
    function Status (StatusRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/Status", req, listener, headers = headers);
    }
    
    function Defragment (DefragmentRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/Defragment", req, listener, headers = headers);
    }
    
    function Hash (HashRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/Hash", req, listener, headers = headers);
    }
    
    function HashKV (HashKVRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/HashKV", req, listener, headers = headers);
    }
    
    function Snapshot (SnapshotRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/Snapshot", req, listener, headers = headers);
    }
    
    function MoveLeader (MoveLeaderRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Maintenance/MoveLeader", req, listener, headers = headers);
    }
    
};

public type AuthBlockingStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function AuthEnable (AuthEnableRequest req, grpc:Headers? headers = ()) returns ((AuthEnableResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/AuthEnable", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthEnableResponse>result, resHeaders);
            }
        }
    }
    
    function AuthDisable (AuthDisableRequest req, grpc:Headers? headers = ()) returns ((AuthDisableResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/AuthDisable", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthDisableResponse>result, resHeaders);
            }
        }
    }
    
    function Authenticate (AuthenticateRequest req, grpc:Headers? headers = ()) returns ((AuthenticateResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/Authenticate", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthenticateResponse>result, resHeaders);
            }
        }
    }
    
    function UserAdd (AuthUserAddRequest req, grpc:Headers? headers = ()) returns ((AuthUserAddResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/UserAdd", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthUserAddResponse>result, resHeaders);
            }
        }
    }
    
    function UserGet (AuthUserGetRequest req, grpc:Headers? headers = ()) returns ((AuthUserGetResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/UserGet", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthUserGetResponse>result, resHeaders);
            }
        }
    }
    
    function UserList (AuthUserListRequest req, grpc:Headers? headers = ()) returns ((AuthUserListResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/UserList", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthUserListResponse>result, resHeaders);
            }
        }
    }
    
    function UserDelete (AuthUserDeleteRequest req, grpc:Headers? headers = ()) returns ((AuthUserDeleteResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/UserDelete", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthUserDeleteResponse>result, resHeaders);
            }
        }
    }
    
    function UserChangePassword (AuthUserChangePasswordRequest req, grpc:Headers? headers = ()) returns ((AuthUserChangePasswordResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/UserChangePassword", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthUserChangePasswordResponse>result, resHeaders);
            }
        }
    }
    
    function UserGrantRole (AuthUserGrantRoleRequest req, grpc:Headers? headers = ()) returns ((AuthUserGrantRoleResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/UserGrantRole", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthUserGrantRoleResponse>result, resHeaders);
            }
        }
    }
    
    function UserRevokeRole (AuthUserRevokeRoleRequest req, grpc:Headers? headers = ()) returns ((AuthUserRevokeRoleResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/UserRevokeRole", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthUserRevokeRoleResponse>result, resHeaders);
            }
        }
    }
    
    function RoleAdd (AuthRoleAddRequest req, grpc:Headers? headers = ()) returns ((AuthRoleAddResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/RoleAdd", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthRoleAddResponse>result, resHeaders);
            }
        }
    }
    
    function RoleGet (AuthRoleGetRequest req, grpc:Headers? headers = ()) returns ((AuthRoleGetResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/RoleGet", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthRoleGetResponse>result, resHeaders);
            }
        }
    }
    
    function RoleList (AuthRoleListRequest req, grpc:Headers? headers = ()) returns ((AuthRoleListResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/RoleList", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthRoleListResponse>result, resHeaders);
            }
        }
    }
    
    function RoleDelete (AuthRoleDeleteRequest req, grpc:Headers? headers = ()) returns ((AuthRoleDeleteResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/RoleDelete", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthRoleDeleteResponse>result, resHeaders);
            }
        }
    }
    
    function RoleGrantPermission (AuthRoleGrantPermissionRequest req, grpc:Headers? headers = ()) returns ((AuthRoleGrantPermissionResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/RoleGrantPermission", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthRoleGrantPermissionResponse>result, resHeaders);
            }
        }
    }
    
    function RoleRevokePermission (AuthRoleRevokePermissionRequest req, grpc:Headers? headers = ()) returns ((AuthRoleRevokePermissionResponse, grpc:Headers)|error) {
        
        var unionResp = self.stub.blockingExecute("etcdserverpb.Auth/RoleRevokePermission", req, headers = headers);
        match unionResp {
            error payloadError => {
                return payloadError;
            }
            (any, grpc:Headers) payload => {
                grpc:Headers resHeaders;
                any result;
                (result, resHeaders) = payload;
                return (check <AuthRoleRevokePermissionResponse>result, resHeaders);
            }
        }
    }
    
};

public type AuthStub object {
    public grpc:Client clientEndpoint;
    public grpc:Stub stub;

    function initStub (grpc:Client ep) {
        grpc:Stub navStub = new;
        navStub.initStub(ep, "non-blocking", DESCRIPTOR_KEY, descriptorMap);
        self.stub = navStub;
    }
    
    function AuthEnable (AuthEnableRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/AuthEnable", req, listener, headers = headers);
    }
    
    function AuthDisable (AuthDisableRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/AuthDisable", req, listener, headers = headers);
    }
    
    function Authenticate (AuthenticateRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/Authenticate", req, listener, headers = headers);
    }
    
    function UserAdd (AuthUserAddRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/UserAdd", req, listener, headers = headers);
    }
    
    function UserGet (AuthUserGetRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/UserGet", req, listener, headers = headers);
    }
    
    function UserList (AuthUserListRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/UserList", req, listener, headers = headers);
    }
    
    function UserDelete (AuthUserDeleteRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/UserDelete", req, listener, headers = headers);
    }
    
    function UserChangePassword (AuthUserChangePasswordRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/UserChangePassword", req, listener, headers = headers);
    }
    
    function UserGrantRole (AuthUserGrantRoleRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/UserGrantRole", req, listener, headers = headers);
    }
    
    function UserRevokeRole (AuthUserRevokeRoleRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/UserRevokeRole", req, listener, headers = headers);
    }
    
    function RoleAdd (AuthRoleAddRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/RoleAdd", req, listener, headers = headers);
    }
    
    function RoleGet (AuthRoleGetRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/RoleGet", req, listener, headers = headers);
    }
    
    function RoleList (AuthRoleListRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/RoleList", req, listener, headers = headers);
    }
    
    function RoleDelete (AuthRoleDeleteRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/RoleDelete", req, listener, headers = headers);
    }
    
    function RoleGrantPermission (AuthRoleGrantPermissionRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/RoleGrantPermission", req, listener, headers = headers);
    }
    
    function RoleRevokePermission (AuthRoleRevokePermissionRequest req, typedesc listener, grpc:Headers? headers = ()) returns (error?) {
        
        return self.stub.nonBlockingExecute("etcdserverpb.Auth/RoleRevokePermission", req, listener, headers = headers);
    }
    
};


public type KVBlockingClient object {
    public grpc:Client client;
    public KVBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        KVBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns KVBlockingStub {
        return self.stub;
    }
};

public type KVClient object {
    public grpc:Client client;
    public KVStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        KVStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns KVStub {
        return self.stub;
    }
};

public type WatchClient object {
    public grpc:Client client;
    public WatchStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        WatchStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns WatchStub {
        return self.stub;
    }
};

public type LeaseBlockingClient object {
    public grpc:Client client;
    public LeaseBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        LeaseBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns LeaseBlockingStub {
        return self.stub;
    }
};

public type LeaseClient object {
    public grpc:Client client;
    public LeaseStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        LeaseStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns LeaseStub {
        return self.stub;
    }
};

public type ClusterBlockingClient object {
    public grpc:Client client;
    public ClusterBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        ClusterBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns ClusterBlockingStub {
        return self.stub;
    }
};

public type ClusterClient object {
    public grpc:Client client;
    public ClusterStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        ClusterStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns ClusterStub {
        return self.stub;
    }
};

public type MaintenanceBlockingClient object {
    public grpc:Client client;
    public MaintenanceBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        MaintenanceBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns MaintenanceBlockingStub {
        return self.stub;
    }
};

public type MaintenanceClient object {
    public grpc:Client client;
    public MaintenanceStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        MaintenanceStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns MaintenanceStub {
        return self.stub;
    }
};

public type AuthBlockingClient object {
    public grpc:Client client;
    public AuthBlockingStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        AuthBlockingStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns AuthBlockingStub {
        return self.stub;
    }
};

public type AuthClient object {
    public grpc:Client client;
    public AuthStub stub;

    public function init (grpc:ClientEndpointConfig config) {
        // initialize client endpoint.
        grpc:Client c = new;
        c.init(config);
        self.client = c;
        // initialize service stub.
        AuthStub s = new;
        s.initStub(c);
        self.stub = s;
    }

    public function getCallerActions () returns AuthStub {
        return self.stub;
    }
};

type ResponseHeader record {
    int cluster_id;
    int member_id;
    int revision;
    int raft_term;
    
};


type RangeRequest record {
    byte[] key;
    byte[] range_end;
    int int_limit;
    int revision;
    SortOrder sort_order;
    SortTarget sort_target;
    boolean serializable;
    boolean keys_only;
    boolean count_only;
    int min_mod_revision;
    int max_mod_revision;
    int min_create_revision;
    int max_create_revision;
    
};

public type SortOrder "NONE"|"ASCEND"|"DESCEND";
@final public SortOrder SORTORDER_NONE = "NONE";
@final public SortOrder SORTORDER_ASCEND = "ASCEND";
@final public SortOrder SORTORDER_DESCEND = "DESCEND";

public type SortTarget "KEY"|"VERSION"|"CREATE"|"MOD"|"VALUE";
@final public SortTarget SORTTARGET_KEY = "KEY";
@final public SortTarget SORTTARGET_VERSION = "VERSION";
@final public SortTarget SORTTARGET_CREATE = "CREATE";
@final public SortTarget SORTTARGET_MOD = "MOD";
@final public SortTarget SORTTARGET_VALUE = "VALUE";


type RangeResponse record {
    ResponseHeader header;
    KeyValue[] kvs;
    boolean more;
    int count;
    
};


type PutRequest record {
    byte[] key;
    byte[] value;
    int lease;
    boolean prev_kv;
    boolean ignore_value;
    boolean ignore_lease;
    
};


type PutResponse record {
    ResponseHeader header;
    KeyValue prev_kv;
    
};


type DeleteRangeRequest record {
    byte[] key;
    byte[] range_end;
    boolean prev_kv;
    
};


type DeleteRangeResponse record {
    ResponseHeader header;
    int deleted;
    KeyValue[] prev_kvs;
    
};


type RequestOp record {
    Request request;
};

public type Request RequestOp_RequestRange|RequestOp_RequestPut|RequestOp_RequestDeleteRange|RequestOp_RequestTxn;

type RequestOp_RequestRange record {
    RangeRequest request_range;
    
};

type RequestOp_RequestPut record {
    PutRequest request_put;
    
};

type RequestOp_RequestDeleteRange record {
    DeleteRangeRequest request_delete_range;
    
};

type RequestOp_RequestTxn record {
    TxnRequest request_txn;
    
};


type ResponseOp record {
    Response response;
};

public type Response ResponseOp_ResponseRange|ResponseOp_ResponsePut|ResponseOp_ResponseDeleteRange|ResponseOp_ResponseTxn;

type ResponseOp_ResponseRange record {
    RangeResponse response_range;
    
};

type ResponseOp_ResponsePut record {
    PutResponse response_put;
    
};

type ResponseOp_ResponseDeleteRange record {
    DeleteRangeResponse response_delete_range;
    
};

type ResponseOp_ResponseTxn record {
    TxnResponse response_txn;
    
};


type Compare record {
    CompareResult result;
    CompareTarget target;
    byte[] key;
    byte[] range_end;
    TargetUnion target_union;
};

public type TargetUnion Compare_Version|Compare_CreateRevision|Compare_ModRevision|Compare_Value|Compare_Lease;

type Compare_Version record {
    int int_version;
    
};

type Compare_CreateRevision record {
    int create_revision;
    
};

type Compare_ModRevision record {
    int mod_revision;
    
};

type Compare_Value record {
    byte[] value;
    
};

type Compare_Lease record {
    int lease;
    
};

public type CompareResult "EQUAL"|"GREATER"|"LESS"|"NOT_EQUAL";
@final public CompareResult COMPARERESULT_EQUAL = "EQUAL";
@final public CompareResult COMPARERESULT_GREATER = "GREATER";
@final public CompareResult COMPARERESULT_LESS = "LESS";
@final public CompareResult COMPARERESULT_NOT_EQUAL = "NOT_EQUAL";

public type CompareTarget "VERSION"|"CREATE"|"MOD"|"VALUE"|"LEASE";
@final public CompareTarget COMPARETARGET_VERSION = "VERSION";
@final public CompareTarget COMPARETARGET_CREATE = "CREATE";
@final public CompareTarget COMPARETARGET_MOD = "MOD";
@final public CompareTarget COMPARETARGET_VALUE = "VALUE";
@final public CompareTarget COMPARETARGET_LEASE = "LEASE";


type TxnRequest record {
    Compare[] compare;
    RequestOp[] success;
    RequestOp[] failure;
    
};


type TxnResponse record {
    ResponseHeader header;
    boolean succeeded;
    ResponseOp[] responses;
    
};


type CompactionRequest record {
    int revision;
    boolean physical;
    
};


type CompactionResponse record {
    ResponseHeader header;
    
};


type HashRequest record {
    
};


type HashKVRequest record {
    int revision;
    
};


type HashKVResponse record {
    ResponseHeader header;
    int int_hash;
    int compact_revision;
    
};


type HashResponse record {
    ResponseHeader header;
    int int_hash;
    
};


type SnapshotRequest record {
    
};


type SnapshotResponse record {
    ResponseHeader header;
    int remaining_bytes;
    byte[] blob;
    
};


type WatchRequest record {
    RequestUnion request_union;
};

public type RequestUnion WatchRequest_CreateRequest|WatchRequest_CancelRequest|WatchRequest_ProgressRequest;

type WatchRequest_CreateRequest record {
    WatchCreateRequest create_request;
    
};

type WatchRequest_CancelRequest record {
    WatchCancelRequest cancel_request;
    
};

type WatchRequest_ProgressRequest record {
    WatchProgressRequest progress_request;
    
};


type WatchCreateRequest record {
    byte[] key;
    byte[] range_end;
    int start_revision;
    boolean progress_notify;
    FilterType[] filters;
    boolean prev_kv;
    int watch_id;
    boolean fragment;
    
};

public type FilterType "NOPUT"|"NODELETE";
@final public FilterType FILTERTYPE_NOPUT = "NOPUT";
@final public FilterType FILTERTYPE_NODELETE = "NODELETE";


type WatchCancelRequest record {
    int watch_id;
    
};


type WatchProgressRequest record {
    
};


type WatchResponse record {
    ResponseHeader header;
    int watch_id;
    boolean created;
    boolean canceled;
    int compact_revision;
    string cancel_reason;
    boolean fragment;
    Event[] event_events;
    
};


type LeaseGrantRequest record {
    int TTL;
    int ID;
    
};


type LeaseGrantResponse record {
    ResponseHeader header;
    int ID;
    int TTL;
    string string_error;
    
};


type LeaseRevokeRequest record {
    int ID;
    
};


type LeaseRevokeResponse record {
    ResponseHeader header;
    
};


type LeaseCheckpoint record {
    int ID;
    int remaining_TTL;
    
};


type LeaseCheckpointRequest record {
    LeaseCheckpoint[] checkpoints;
    
};


type LeaseCheckpointResponse record {
    ResponseHeader header;
    
};


type LeaseKeepAliveRequest record {
    int ID;
    
};


type LeaseKeepAliveResponse record {
    ResponseHeader header;
    int ID;
    int TTL;
    
};


type LeaseTimeToLiveRequest record {
    int ID;
    boolean keys;
    
};


type LeaseTimeToLiveResponse record {
    ResponseHeader header;
    int ID;
    int TTL;
    int grantedTTL;
    byte[][] keys;
    
};


type LeaseLeasesRequest record {
    
};


type LeaseStatus record {
    int ID;
    
};


type LeaseLeasesResponse record {
    ResponseHeader header;
    LeaseStatus[] leases;
    
};


type Member record {
    int ID;
    string name;
    string[] peerURLs;
    string[] clientURLs;
    
};


type MemberAddRequest record {
    string[] peerURLs;
    
};


type MemberAddResponse record {
    ResponseHeader header;
    Member member;
    Member[] members;
    
};


type MemberRemoveRequest record {
    int ID;
    
};


type MemberRemoveResponse record {
    ResponseHeader header;
    Member[] members;
    
};


type MemberUpdateRequest record {
    int ID;
    string[] peerURLs;
    
};


type MemberUpdateResponse record {
    ResponseHeader header;
    Member[] members;
    
};


type MemberListRequest record {
    
};


type MemberListResponse record {
    ResponseHeader header;
    Member[] members;
    
};


type DefragmentRequest record {
    
};


type DefragmentResponse record {
    ResponseHeader header;
    
};


type MoveLeaderRequest record {
    int targetID;
    
};


type MoveLeaderResponse record {
    ResponseHeader header;
    
};


type AlarmRequest record {
    AlarmAction action;
    int memberID;
    AlarmType alarm;
    
};

public type AlarmAction "GET"|"ACTIVATE"|"DEACTIVATE";
@final public AlarmAction ALARMACTION_GET = "GET";
@final public AlarmAction ALARMACTION_ACTIVATE = "ACTIVATE";
@final public AlarmAction ALARMACTION_DEACTIVATE = "DEACTIVATE";


type AlarmMember record {
    int memberID;
    AlarmType alarm;
    
};


type AlarmResponse record {
    ResponseHeader header;
    AlarmMember[] alarms;
    
};


type StatusRequest record {
    
};


type StatusResponse record {
    ResponseHeader header;
    string string_version;
    int dbSize;
    int leader;
    int raftIndex;
    int raftTerm;
    int raftAppliedIndex;
    string[] errors;
    int dbSizeInUse;
    
};


type AuthEnableRequest record {
    
};


type AuthDisableRequest record {
    
};


type AuthenticateRequest record {
    string name;
    string password;
    
};


type AuthUserAddRequest record {
    string name;
    string password;
    
};


type AuthUserGetRequest record {
    string name;
    
};


type AuthUserDeleteRequest record {
    string name;
    
};


type AuthUserChangePasswordRequest record {
    string name;
    string password;
    
};


type AuthUserGrantRoleRequest record {
    string user;
    string role;
    
};


type AuthUserRevokeRoleRequest record {
    string name;
    string role;
    
};


type AuthRoleAddRequest record {
    string name;
    
};


type AuthRoleGetRequest record {
    string role;
    
};


type AuthUserListRequest record {
    
};


type AuthRoleListRequest record {
    
};


type AuthRoleDeleteRequest record {
    string role;
    
};


type AuthRoleGrantPermissionRequest record {
    string name;
    Permission perm;
    
};


type AuthRoleRevokePermissionRequest record {
    string role;
    byte[] key;
    byte[] range_end;
    
};


type AuthEnableResponse record {
    ResponseHeader header;
    
};


type AuthDisableResponse record {
    ResponseHeader header;
    
};


type AuthenticateResponse record {
    ResponseHeader header;
    string token;
    
};


type AuthUserAddResponse record {
    ResponseHeader header;
    
};


type AuthUserGetResponse record {
    ResponseHeader header;
    string[] roles;
    
};


type AuthUserDeleteResponse record {
    ResponseHeader header;
    
};


type AuthUserChangePasswordResponse record {
    ResponseHeader header;
    
};


type AuthUserGrantRoleResponse record {
    ResponseHeader header;
    
};


type AuthUserRevokeRoleResponse record {
    ResponseHeader header;
    
};


type AuthRoleAddResponse record {
    ResponseHeader header;
    
};


type AuthRoleGetResponse record {
    ResponseHeader header;
    Permission[] perm;
    
};


type AuthRoleListResponse record {
    ResponseHeader header;
    string[] roles;
    
};


type AuthUserListResponse record {
    ResponseHeader header;
    string[] users;
    
};


type AuthRoleDeleteResponse record {
    ResponseHeader header;
    
};


type AuthRoleGrantPermissionResponse record {
    ResponseHeader header;
    
};


type AuthRoleRevokePermissionResponse record {
    ResponseHeader header;
    
};


public type AlarmType "NONE"|"NOSPACE"|"CORRUPT";
@final public AlarmType ALARMTYPE_NONE = "NONE";
@final public AlarmType ALARMTYPE_NOSPACE = "NOSPACE";
@final public AlarmType ALARMTYPE_CORRUPT = "CORRUPT";

@final string DESCRIPTOR_KEY = "rpc.proto";
map descriptorMap = {
"rpc.proto":"0A0",
"gogoproto/gogo.proto":"0A1467",
"google/protobuf/descriptor.proto":"0A20676F6",
"etcd/mvcc/mvccpb/kv.proto":"0A19657463642F6",
"etcd/auth/authpb/auth.proto":"0A1B657463642F6",
"google/api/http.proto":"0A15676F6F676C652F61",
"google/protobuf/descriptor.proto":"0A20676F6F676C",
"google/api/annotations.proto":"0A1C676F6F676C65"
};
