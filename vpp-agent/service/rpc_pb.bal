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

@final string DESCRIPTOR_KEY = "proto_to_ballerina.proto";
map descriptorMap = {
"proto_to_ballerina.proto":"0A097270632E70726F746F120C6574636473657276657270621A14676F676F70726F746F2F676F676F2E70726F746F1A19657463642F6D7663632F6D76636370622F6B762E70726F746F1A1B657463642F617574682F6175746870622F617574682E70726F746F1A1C676F6F676C652F6170692F616E6E6F746174696F6E732E70726F746F2285010A0E526573706F6E7365486561646572121D0A0A636C75737465725F69641801200128045209636C75737465724964121B0A096D656D6265725F696418022001280452086D656D6265724964121A0A087265766973696F6E18032001280352087265766973696F6E121B0A09726166745F7465726D1804200128045208726166745465726D2284050A0C52616E67655265717565737412100A036B657918012001280C52036B6579121B0A0972616E67655F656E6418022001280C520872616E6765456E6412140A056C696D697418032001280352056C696D6974121A0A087265766973696F6E18042001280352087265766973696F6E12430A0A736F72745F6F7264657218052001280E32242E6574636473657276657270622E52616E6765526571756573742E536F72744F726465725209736F72744F7264657212460A0B736F72745F74617267657418062001280E32252E6574636473657276657270622E52616E6765526571756573742E536F7274546172676574520A736F727454617267657412220A0C73657269616C697A61626C65180720012808520C73657269616C697A61626C65121B0A096B6579735F6F6E6C7918082001280852086B6579734F6E6C79121D0A0A636F756E745F6F6E6C791809200128085209636F756E744F6E6C7912280A106D696E5F6D6F645F7265766973696F6E180A20012803520E6D696E4D6F645265766973696F6E12280A106D61785F6D6F645F7265766973696F6E180B20012803520E6D61784D6F645265766973696F6E122E0A136D696E5F6372656174655F7265766973696F6E180C2001280352116D696E4372656174655265766973696F6E122E0A136D61785F6372656174655F7265766973696F6E180D2001280352116D61784372656174655265766973696F6E222E0A09536F72744F7264657212080A044E4F4E451000120A0A06415343454E441001120B0A0744455343454E44100222420A0A536F727454617267657412070A034B45591000120B0A0756455253494F4E1001120A0A06435245415445100212070A034D4F44100312090A0556414C554510042293010A0D52616E6765526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212220A036B767318022003280B32102E6D76636370622E4B657956616C756552036B767312120A046D6F726518032001280852046D6F726512140A05636F756E741804200128035205636F756E7422A9010A0A5075745265717565737412100A036B657918012001280C52036B657912140A0576616C756518022001280C520576616C756512140A056C6561736518032001280352056C6561736512170A07707265765F6B761804200128085206707265764B7612210A0C69676E6F72655F76616C7565180520012808520B69676E6F726556616C756512210A0C69676E6F72655F6C65617365180620012808520B69676E6F72654C65617365226E0A0B507574526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212290A07707265765F6B7618022001280B32102E6D76636370622E4B657956616C75655206707265764B76225C0A1244656C65746552616E67655265717565737412100A036B657918012001280C52036B6579121B0A0972616E67655F656E6418022001280C520872616E6765456E6412170A07707265765F6B761803200128085206707265764B762292010A1344656C65746552616E6765526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212180A0764656C65746564180220012803520764656C65746564122B0A08707265765F6B767318032003280B32102E6D76636370622E4B657956616C75655207707265764B767322A9020A09526571756573744F7012410A0D726571756573745F72616E676518012001280B321A2E6574636473657276657270622E52616E6765526571756573744800520C7265717565737452616E6765123B0A0B726571756573745F70757418022001280B32182E6574636473657276657270622E507574526571756573744800520A7265717565737450757412540A14726571756573745F64656C6574655F72616E676518032001280B32202E6574636473657276657270622E44656C65746552616E676552657175657374480052127265717565737444656C65746552616E6765123B0A0B726571756573745F74786E18042001280B32182E6574636473657276657270622E54786E526571756573744800520A7265717565737454786E42090A077265717565737422B7020A0A526573706F6E73654F7012440A0E726573706F6E73655F72616E676518012001280B321B2E6574636473657276657270622E52616E6765526573706F6E73654800520D726573706F6E736552616E6765123E0A0C726573706F6E73655F70757418022001280B32192E6574636473657276657270622E507574526573706F6E73654800520B726573706F6E736550757412570A15726573706F6E73655F64656C6574655F72616E676518032001280B32212E6574636473657276657270622E44656C65746552616E6765526573706F6E736548005213726573706F6E736544656C65746552616E6765123E0A0C726573706F6E73655F74786E18042001280B32192E6574636473657276657270622E54786E526573706F6E73654800520B726573706F6E736554786E420A0A08726573706F6E736522E9030A07436F6D70617265123B0A06726573756C7418012001280E32232E6574636473657276657270622E436F6D706172652E436F6D70617265526573756C745206726573756C74123B0A0674617267657418022001280E32232E6574636473657276657270622E436F6D706172652E436F6D70617265546172676574520674617267657412100A036B657918032001280C52036B6579121A0A0776657273696F6E1804200128034800520776657273696F6E12290A0F6372656174655F7265766973696F6E1805200128034800520E6372656174655265766973696F6E12230A0C6D6F645F7265766973696F6E1806200128034800520B6D6F645265766973696F6E12160A0576616C756518072001280C4800520576616C756512160A056C65617365180820012803480052056C65617365121B0A0972616E67655F656E6418402001280C520872616E6765456E6422400A0D436F6D70617265526573756C7412090A05455155414C1000120B0A0747524541544552100112080A044C4553531002120D0A094E4F545F455155414C100322470A0D436F6D70617265546172676574120B0A0756455253494F4E1000120A0A06435245415445100112070A034D4F44100212090A0556414C5545100312090A054C454153451004420E0A0C7461726765745F756E696F6E22A3010A0A54786E52657175657374122F0A07636F6D7061726518012003280B32152E6574636473657276657270622E436F6D706172655207636F6D7061726512310A077375636365737318022003280B32172E6574636473657276657270622E526571756573744F7052077375636365737312310A076661696C75726518032003280B32172E6574636473657276657270622E526571756573744F7052076661696C7572652299010A0B54786E526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572121C0A09737563636565646564180220012808520973756363656564656412360A09726573706F6E73657318032003280B32182E6574636473657276657270622E526573706F6E73654F705209726573706F6E736573224B0A11436F6D70616374696F6E52657175657374121A0A087265766973696F6E18012001280352087265766973696F6E121A0A08706879736963616C1802200128085208706879736963616C224A0A12436F6D70616374696F6E526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572220D0A0B4861736852657175657374222B0A0D486173684B5652657175657374121A0A087265766973696F6E18012001280352087265766973696F6E2285010A0E486173684B56526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212120A046861736818022001280D52046861736812290A10636F6D706163745F7265766973696F6E180320012803520F636F6D706163745265766973696F6E22580A0C48617368526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212120A046861736818022001280D52046861736822110A0F536E617073686F74526571756573742285010A10536E617073686F74526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212270A0F72656D61696E696E675F6279746573180220012804520E72656D61696E696E67427974657312120A04626C6F6218032001280C5204626C6F622286020A0C57617463685265717565737412490A0E6372656174655F7265717565737418012001280B32202E6574636473657276657270622E5761746368437265617465526571756573744800520D6372656174655265717565737412490A0E63616E63656C5F7265717565737418022001280B32202E6574636473657276657270622E576174636843616E63656C526571756573744800520D63616E63656C52657175657374124F0A1070726F67726573735F7265717565737418032001280B32222E6574636473657276657270622E576174636850726F6772657373526571756573744800520F70726F677265737352657175657374420F0A0D726571756573745F756E696F6E22D1020A1257617463684372656174655265717565737412100A036B657918012001280C52036B6579121B0A0972616E67655F656E6418022001280C520872616E6765456E6412250A0E73746172745F7265766973696F6E180320012803520D73746172745265766973696F6E12270A0F70726F67726573735F6E6F74696679180420012808520E70726F67726573734E6F7469667912450A0766696C7465727318052003280E322B2E6574636473657276657270622E5761746368437265617465526571756573742E46696C74657254797065520766696C7465727312170A07707265765F6B761806200128085206707265764B7612190A0877617463685F6964180720012803520777617463684964121A0A08667261676D656E741808200128085208667261676D656E7422250A0A46696C7465725479706512090A054E4F5055541000120C0A084E4F44454C4554451001222F0A12576174636843616E63656C5265717565737412190A0877617463685F696418012001280352077761746368496422160A14576174636850726F67726573735265717565737422A9020A0D5761746368526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212190A0877617463685F696418022001280352077761746368496412180A0763726561746564180320012808520763726561746564121A0A0863616E63656C6564180420012808520863616E63656C656412290A10636F6D706163745F7265766973696F6E180520012803520F636F6D706163745265766973696F6E12230A0D63616E63656C5F726561736F6E180620012809520C63616E63656C526561736F6E121A0A08667261676D656E741807200128085208667261676D656E7412250A066576656E7473180B2003280B320D2E6D76636370622E4576656E7452066576656E747322350A114C656173654772616E745265717565737412100A0354544C180120012803520354544C120E0A024944180220012803520249442282010A124C656173654772616E74526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572120E0A0249441802200128035202494412100A0354544C180320012803520354544C12140A056572726F7218042001280952056572726F7222240A124C656173655265766F6B6552657175657374120E0A02494418012001280352024944224B0A134C656173655265766F6B65526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222460A0F4C65617365436865636B706F696E74120E0A0249441801200128035202494412230A0D72656D61696E696E675F54544C180220012803520C72656D61696E696E6754544C22590A164C65617365436865636B706F696E7452657175657374123F0A0B636865636B706F696E747318012003280B321D2E6574636473657276657270622E4C65617365436865636B706F696E74520B636865636B706F696E7473224F0A174C65617365436865636B706F696E74526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222270A154C656173654B656570416C69766552657175657374120E0A0249441801200128035202494422700A164C656173654B656570416C697665526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572120E0A0249441802200128035202494412100A0354544C180320012803520354544C223C0A164C6561736554696D65546F4C69766552657175657374120E0A0249441801200128035202494412120A046B65797318022001280852046B65797322A5010A174C6561736554696D65546F4C697665526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572120E0A0249441802200128035202494412100A0354544C180320012803520354544C121E0A0A6772616E74656454544C180420012803520A6772616E74656454544C12120A046B65797318052003280C52046B65797322140A124C656173654C656173657352657175657374221D0A0B4C65617365537461747573120E0A02494418012001280352024944227E0A134C656173654C6561736573526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212310A066C656173657318022003280B32192E6574636473657276657270622E4C6561736553746174757352066C656173657322680A064D656D626572120E0A0249441801200128045202494412120A046E616D6518022001280952046E616D65121A0A087065657255524C7318032003280952087065657255524C73121E0A0A636C69656E7455524C73180420032809520A636C69656E7455524C73222E0A104D656D62657241646452657175657374121A0A087065657255524C7318012003280952087065657255524C7322A7010A114D656D626572416464526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572122C0A066D656D62657218022001280B32142E6574636473657276657270622E4D656D62657252066D656D626572122E0A076D656D6265727318032003280B32142E6574636473657276657270622E4D656D62657252076D656D6265727322250A134D656D62657252656D6F766552657175657374120E0A02494418012001280452024944227C0A144D656D62657252656D6F7665526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572122E0A076D656D6265727318022003280B32142E6574636473657276657270622E4D656D62657252076D656D6265727322410A134D656D62657255706461746552657175657374120E0A02494418012001280452024944121A0A087065657255524C7318022003280952087065657255524C73227C0A144D656D626572557064617465526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572122E0A076D656D6265727318022003280B32142E6574636473657276657270622E4D656D62657252076D656D6265727322130A114D656D6265724C69737452657175657374227A0A124D656D6265724C697374526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572122E0A076D656D6265727318022003280B32142E6574636473657276657270622E4D656D62657252076D656D6265727322130A114465667261676D656E7452657175657374224A0A124465667261676D656E74526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572222F0A114D6F76654C656164657252657175657374121A0A08746172676574494418012001280452087461726765744944224A0A124D6F76654C6561646572526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222CF010A0C416C61726D52657175657374123E0A06616374696F6E18012001280E32262E6574636473657276657270622E416C61726D526571756573742E416C61726D416374696F6E5206616374696F6E121A0A086D656D626572494418022001280452086D656D6265724944122D0A05616C61726D18032001280E32172E6574636473657276657270622E416C61726D547970655205616C61726D22340A0B416C61726D416374696F6E12070A034745541000120C0A0841435449564154451001120E0A0A44454143544956415445100222580A0B416C61726D4D656D626572121A0A086D656D626572494418012001280452086D656D6265724944122D0A05616C61726D18022001280E32172E6574636473657276657270622E416C61726D547970655205616C61726D22780A0D416C61726D526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212310A06616C61726D7318022003280B32192E6574636473657276657270622E416C61726D4D656D6265725206616C61726D73220F0A0D5374617475735265717565737422B0020A0E537461747573526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212180A0776657273696F6E180220012809520776657273696F6E12160A06646253697A651803200128035206646253697A6512160A066C656164657218042001280452066C6561646572121C0A0972616674496E646578180520012804520972616674496E646578121A0A08726166745465726D1806200128045208726166745465726D122A0A10726166744170706C696564496E6465781807200128045210726166744170706C696564496E64657812160A066572726F727318082003280952066572726F727312200A0B646253697A65496E557365180920012803520B646253697A65496E55736522130A1141757468456E61626C655265717565737422140A124175746844697361626C655265717565737422450A1341757468656E7469636174655265717565737412120A046E616D6518012001280952046E616D65121A0A0870617373776F7264180220012809520870617373776F726422440A1241757468557365724164645265717565737412120A046E616D6518012001280952046E616D65121A0A0870617373776F7264180220012809520870617373776F726422280A1241757468557365724765745265717565737412120A046E616D6518012001280952046E616D65222B0A15417574685573657244656C6574655265717565737412120A046E616D6518012001280952046E616D65224F0A1D41757468557365724368616E676550617373776F72645265717565737412120A046E616D6518012001280952046E616D65121A0A0870617373776F7264180220012809520870617373776F726422420A1841757468557365724772616E74526F6C655265717565737412120A047573657218012001280952047573657212120A04726F6C651802200128095204726F6C6522430A1941757468557365725265766F6B65526F6C655265717565737412120A046E616D6518012001280952046E616D6512120A04726F6C651802200128095204726F6C6522280A1241757468526F6C654164645265717565737412120A046E616D6518012001280952046E616D6522280A1241757468526F6C654765745265717565737412120A04726F6C651801200128095204726F6C6522150A1341757468557365724C6973745265717565737422150A1341757468526F6C654C69737452657175657374222B0A1541757468526F6C6544656C6574655265717565737412120A04726F6C651801200128095204726F6C65225C0A1E41757468526F6C654772616E745065726D697373696F6E5265717565737412120A046E616D6518012001280952046E616D6512260A047065726D18022001280B32122E6175746870622E5065726D697373696F6E52047065726D22640A1F41757468526F6C655265766F6B655065726D697373696F6E5265717565737412120A04726F6C651801200128095204726F6C6512100A036B657918022001280C52036B6579121B0A0972616E67655F656E6418032001280C520872616E6765456E64224A0A1241757468456E61626C65526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572224B0A134175746844697361626C65526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222620A1441757468656E746963617465526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212140A05746F6B656E1802200128095205746F6B656E224B0A134175746855736572416464526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222610A134175746855736572476574526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212140A05726F6C65731802200328095205726F6C6573224E0A16417574685573657244656C657465526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222560A1E41757468557365724368616E676550617373776F7264526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222510A1941757468557365724772616E74526F6C65526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222520A1A41757468557365725265766F6B65526F6C65526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E73654865616465725206686561646572224B0A1341757468526F6C65416464526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222730A1341757468526F6C65476574526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212260A047065726D18022003280B32122E6175746870622E5065726D697373696F6E52047065726D22620A1441757468526F6C654C697374526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212140A05726F6C65731802200328095205726F6C657322620A1441757468557365724C697374526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657212140A05757365727318022003280952057573657273224E0A1641757468526F6C6544656C657465526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222570A1F41757468526F6C654772616E745065726D697373696F6E526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E7365486561646572520668656164657222580A2041757468526F6C655265766F6B655065726D697373696F6E526573706F6E736512340A0668656164657218012001280B321C2E6574636473657276657270622E526573706F6E736548656164657252066865616465722A2F0A09416C61726D5479706512080A044E4F4E451000120B0A074E4F53504143451001120B0A07434F5252555054100232E4030A024B5612590A0552616E6765121A2E6574636473657276657270622E52616E6765526571756573741A1B2E6574636473657276657270622E52616E6765526573706F6E7365221782D3E4930211220C2F76332F6B762F72616E67653A012A12510A0350757412182E6574636473657276657270622E507574526571756573741A192E6574636473657276657270622E507574526573706F6E7365221582D3E493020F220A2F76332F6B762F7075743A012A12710A0B44656C65746552616E676512202E6574636473657276657270622E44656C65746552616E6765526571756573741A212E6574636473657276657270622E44656C65746552616E6765526573706F6E7365221D82D3E493021722122F76332F6B762F64656C65746572616E67653A012A12510A0354786E12182E6574636473657276657270622E54786E526571756573741A192E6574636473657276657270622E54786E526573706F6E7365221582D3E493020F220A2F76332F6B762F74786E3A012A126A0A07436F6D70616374121F2E6574636473657276657270622E436F6D70616374696F6E526571756573741A202E6574636473657276657270622E436F6D70616374696F6E526573706F6E7365221C82D3E493021622112F76332F6B762F636F6D70616374696F6E3A012A32630A055761746368125A0A055761746368121A2E6574636473657276657270622E5761746368526571756573741A1B2E6574636473657276657270622E5761746368526573706F6E7365221482D3E493020E22092F76332F77617463683A012A2801300132AD050A054C65617365126B0A0A4C656173654772616E74121F2E6574636473657276657270622E4C656173654772616E74526571756573741A202E6574636473657276657270622E4C656173654772616E74526573706F6E7365221A82D3E4930214220F2F76332F6C656173652F6772616E743A012A1289010A0B4C656173655265766F6B6512202E6574636473657276657270622E4C656173655265766F6B65526571756573741A212E6574636473657276657270622E4C656173655265766F6B65526573706F6E7365223582D3E493022F22102F76332F6C656173652F7265766F6B653A012A5A1822132F76332F6B762F6C656173652F7265766F6B653A012A127F0A0E4C656173654B656570416C69766512232E6574636473657276657270622E4C656173654B656570416C697665526571756573741A242E6574636473657276657270622E4C656173654B656570416C697665526573706F6E7365221E82D3E493021822132F76332F6C656173652F6B656570616C6976653A012A28013001129D010A0F4C6561736554696D65546F4C69766512242E6574636473657276657270622E4C6561736554696D65546F4C697665526571756573741A252E6574636473657276657270622E4C6561736554696D65546F4C697665526573706F6E7365223D82D3E493023722142F76332F6C656173652F74696D65746F6C6976653A012A5A1C22172F76332F6B762F6C656173652F74696D65746F6C6976653A012A1289010A0B4C656173654C656173657312202E6574636473657276657270622E4C656173654C6561736573526571756573741A212E6574636473657276657270622E4C656173654C6561736573526573706F6E7365223582D3E493022F22102F76332F6C656173652F6C65617365733A012A5A1822132F76332F6B762F6C656173652F6C65617365733A012A32E9030A07436C7573746572126F0A094D656D626572416464121E2E6574636473657276657270622E4D656D626572416464526571756573741A1F2E6574636473657276657270622E4D656D626572416464526573706F6E7365222182D3E493021B22162F76332F636C75737465722F6D656D6265722F6164643A012A127B0A0C4D656D62657252656D6F766512212E6574636473657276657270622E4D656D62657252656D6F7665526571756573741A222E6574636473657276657270622E4D656D62657252656D6F7665526573706F6E7365222482D3E493021E22192F76332F636C75737465722F6D656D6265722F72656D6F76653A012A127B0A0C4D656D62657255706461746512212E6574636473657276657270622E4D656D626572557064617465526571756573741A222E6574636473657276657270622E4D656D626572557064617465526573706F6E7365222482D3E493021E22192F76332F636C75737465722F6D656D6265722F7570646174653A012A12730A0A4D656D6265724C697374121F2E6574636473657276657270622E4D656D6265724C697374526571756573741A202E6574636473657276657270622E4D656D6265724C697374526573706F6E7365222282D3E493021C22172F76332F636C75737465722F6D656D6265722F6C6973743A012A328A060A0B4D61696E74656E616E636512620A05416C61726D121A2E6574636473657276657270622E416C61726D526571756573741A1B2E6574636473657276657270622E416C61726D526573706F6E7365222082D3E493021A22152F76332F6D61696E74656E616E63652F616C61726D3A012A12660A06537461747573121B2E6574636473657276657270622E537461747573526571756573741A1C2E6574636473657276657270622E537461747573526573706F6E7365222182D3E493021B22162F76332F6D61696E74656E616E63652F7374617475733A012A12760A0A4465667261676D656E74121F2E6574636473657276657270622E4465667261676D656E74526571756573741A202E6574636473657276657270622E4465667261676D656E74526573706F6E7365222582D3E493021F221A2F76332F6D61696E74656E616E63652F6465667261676D656E743A012A125E0A044861736812192E6574636473657276657270622E48617368526571756573741A1A2E6574636473657276657270622E48617368526573706F6E7365221F82D3E493021922142F76332F6D61696E74656E616E63652F686173683A012A12640A06486173684B56121B2E6574636473657276657270622E486173684B56526571756573741A1C2E6574636473657276657270622E486173684B56526573706F6E7365221F82D3E493021922142F76332F6D61696E74656E616E63652F686173683A012A12700A08536E617073686F74121D2E6574636473657276657270622E536E617073686F74526571756573741A1E2E6574636473657276657270622E536E617073686F74526573706F6E7365222382D3E493021D22182F76332F6D61696E74656E616E63652F736E617073686F743A012A3001127F0A0A4D6F76654C6561646572121F2E6574636473657276657270622E4D6F76654C6561646572526571756573741A202E6574636473657276657270622E4D6F76654C6561646572526573706F6E7365222E82D3E493022822232F76332F6D61696E74656E616E63652F7472616E736665722D6C6561646572736869703A012A32BA0F0A0441757468126B0A0A41757468456E61626C65121F2E6574636473657276657270622E41757468456E61626C65526571756573741A202E6574636473657276657270622E41757468456E61626C65526573706F6E7365221A82D3E4930214220F2F76332F617574682F656E61626C653A012A126F0A0B4175746844697361626C6512202E6574636473657276657270622E4175746844697361626C65526571756573741A212E6574636473657276657270622E4175746844697361626C65526573706F6E7365221B82D3E493021522102F76332F617574682F64697361626C653A012A12770A0C41757468656E74696361746512212E6574636473657276657270622E41757468656E746963617465526571756573741A222E6574636473657276657270622E41757468656E746963617465526573706F6E7365222082D3E493021A22152F76332F617574682F61757468656E7469636174653A012A126C0A075573657241646412202E6574636473657276657270622E4175746855736572416464526571756573741A212E6574636473657276657270622E4175746855736572416464526573706F6E7365221C82D3E493021622112F76332F617574682F757365722F6164643A012A126C0A075573657247657412202E6574636473657276657270622E4175746855736572476574526571756573741A212E6574636473657276657270622E4175746855736572476574526573706F6E7365221C82D3E493021622112F76332F617574682F757365722F6765743A012A12700A08557365724C69737412212E6574636473657276657270622E41757468557365724C697374526571756573741A222E6574636473657276657270622E41757468557365724C697374526573706F6E7365221D82D3E493021722122F76332F617574682F757365722F6C6973743A012A12780A0A5573657244656C65746512232E6574636473657276657270622E417574685573657244656C657465526571756573741A242E6574636473657276657270622E417574685573657244656C657465526573706F6E7365221F82D3E493021922142F76332F617574682F757365722F64656C6574653A012A1292010A12557365724368616E676550617373776F7264122B2E6574636473657276657270622E41757468557365724368616E676550617373776F7264526571756573741A2C2E6574636473657276657270622E41757468557365724368616E676550617373776F7264526573706F6E7365222182D3E493021B22162F76332F617574682F757365722F6368616E676570773A012A1280010A0D557365724772616E74526F6C6512262E6574636473657276657270622E41757468557365724772616E74526F6C65526571756573741A272E6574636473657276657270622E41757468557365724772616E74526F6C65526573706F6E7365221E82D3E493021822132F76332F617574682F757365722F6772616E743A012A1284010A0E557365725265766F6B65526F6C6512272E6574636473657276657270622E41757468557365725265766F6B65526F6C65526571756573741A282E6574636473657276657270622E41757468557365725265766F6B65526F6C65526573706F6E7365221F82D3E493021922142F76332F617574682F757365722F7265766F6B653A012A126C0A07526F6C6541646412202E6574636473657276657270622E41757468526F6C65416464526571756573741A212E6574636473657276657270622E41757468526F6C65416464526573706F6E7365221C82D3E493021622112F76332F617574682F726F6C652F6164643A012A126C0A07526F6C6547657412202E6574636473657276657270622E41757468526F6C65476574526571756573741A212E6574636473657276657270622E41757468526F6C65476574526573706F6E7365221C82D3E493021622112F76332F617574682F726F6C652F6765743A012A12700A08526F6C654C69737412212E6574636473657276657270622E41757468526F6C654C697374526571756573741A222E6574636473657276657270622E41757468526F6C654C697374526573706F6E7365221D82D3E493021722122F76332F617574682F726F6C652F6C6973743A012A12780A0A526F6C6544656C65746512232E6574636473657276657270622E41757468526F6C6544656C657465526571756573741A242E6574636473657276657270622E41757468526F6C6544656C657465526573706F6E7365221F82D3E493021922142F76332F617574682F726F6C652F64656C6574653A012A1292010A13526F6C654772616E745065726D697373696F6E122C2E6574636473657276657270622E41757468526F6C654772616E745065726D697373696F6E526571756573741A2D2E6574636473657276657270622E41757468526F6C654772616E745065726D697373696F6E526573706F6E7365221E82D3E493021822132F76332F617574682F726F6C652F6772616E743A012A1296010A14526F6C655265766F6B655065726D697373696F6E122D2E6574636473657276657270622E41757468526F6C655265766F6B655065726D697373696F6E526571756573741A2E2E6574636473657276657270622E41757468526F6C655265766F6B655065726D697373696F6E526573706F6E7365221F82D3E493021922142F76332F617574682F726F6C652F7265766F6B653A012A4208C8E21E01D0E21E01620670726F746F33",
"gogoproto/gogo.proto":"0A14676F676F70726F746F2F676F676F2E70726F746F1209676F676F70726F746F1A20676F6F676C652F70726F746F6275662F64657363726970746F722E70726F746F3A4E0A13676F70726F746F5F656E756D5F707265666978121C2E676F6F676C652E70726F746F6275662E456E756D4F7074696F6E7318B1E403200128085211676F70726F746F456E756D5072656669783A520A15676F70726F746F5F656E756D5F737472696E676572121C2E676F6F676C652E70726F746F6275662E456E756D4F7074696F6E7318C5E403200128085213676F70726F746F456E756D537472696E6765723A430A0D656E756D5F737472696E676572121C2E676F6F676C652E70726F746F6275662E456E756D4F7074696F6E7318C6E40320012808520C656E756D537472696E6765723A470A0F656E756D5F637573746F6D6E616D65121C2E676F6F676C652E70726F746F6275662E456E756D4F7074696F6E7318C7E40320012809520E656E756D437573746F6D6E616D653A3A0A08656E756D6465636C121C2E676F6F676C652E70726F746F6275662E456E756D4F7074696F6E7318C8E403200128085208656E756D6465636C3A560A14656E756D76616C75655F637573746F6D6E616D6512212E676F6F676C652E70726F746F6275662E456E756D56616C75654F7074696F6E7318D18304200128095213656E756D76616C7565437573746F6D6E616D653A4E0A13676F70726F746F5F676574746572735F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E731899EC03200128085211676F70726F746F47657474657273416C6C3A550A17676F70726F746F5F656E756D5F7072656669785F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E73189AEC03200128085214676F70726F746F456E756D507265666978416C6C3A500A14676F70726F746F5F737472696E6765725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E73189BEC03200128085212676F70726F746F537472696E676572416C6C3A4A0A11766572626F73655F657175616C5F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E73189CEC0320012808520F766572626F7365457175616C416C6C3A390A08666163655F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E73189DEC0320012808520766616365416C6C3A410A0C676F737472696E675F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E73189EEC0320012808520B676F737472696E67416C6C3A410A0C706F70756C6174655F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E73189FEC0320012808520B706F70756C617465416C6C3A410A0C737472696E6765725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318A0EC0320012808520B737472696E676572416C6C3A3F0A0B6F6E6C796F6E655F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318A1EC0320012808520A6F6E6C796F6E65416C6C3A3B0A09657175616C5F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318A5EC03200128085208657175616C416C6C3A470A0F6465736372697074696F6E5F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318A6EC0320012808520E6465736372697074696F6E416C6C3A3F0A0B7465737467656E5F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318A7EC0320012808520A7465737467656E416C6C3A410A0C62656E636867656E5F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318A8EC0320012808520B62656E636867656E416C6C3A430A0D6D61727368616C65725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318A9EC0320012808520C6D61727368616C6572416C6C3A470A0F756E6D61727368616C65725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318AAEC0320012808520E756E6D61727368616C6572416C6C3A500A14737461626C655F6D61727368616C65725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318ABEC03200128085212737461626C654D61727368616C6572416C6C3A3B0A0973697A65725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318ACEC0320012808520873697A6572416C6C3A590A19676F70726F746F5F656E756D5F737472696E6765725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318ADEC03200128085216676F70726F746F456E756D537472696E676572416C6C3A4A0A11656E756D5F737472696E6765725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318AEEC0320012808520F656E756D537472696E676572416C6C3A500A14756E736166655F6D61727368616C65725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318AFEC03200128085212756E736166654D61727368616C6572416C6C3A540A16756E736166655F756E6D61727368616C65725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B0EC03200128085214756E73616665556E6D61727368616C6572416C6C3A5B0A1A676F70726F746F5F657874656E73696F6E735F6D61705F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B1EC03200128085217676F70726F746F457874656E73696F6E734D6170416C6C3A580A18676F70726F746F5F756E7265636F676E697A65645F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B2EC03200128085216676F70726F746F556E7265636F676E697A6564416C6C3A490A10676F676F70726F746F5F696D706F7274121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B3EC0320012808520F676F676F70726F746F496D706F72743A450A0E70726F746F73697A65725F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B4EC0320012808520D70726F746F73697A6572416C6C3A3F0A0B636F6D706172655F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B5EC0320012808520A636F6D70617265416C6C3A410A0C747970656465636C5F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B6EC0320012808520B747970656465636C416C6C3A410A0C656E756D6465636C5F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B7EC0320012808520B656E756D6465636C416C6C3A510A14676F70726F746F5F726567697374726174696F6E121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B8EC03200128085213676F70726F746F526567697374726174696F6E3A470A0F6D6573736167656E616D655F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318B9EC0320012808520E6D6573736167656E616D65416C6C3A520A15676F70726F746F5F73697A6563616368655F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318BAEC03200128085213676F70726F746F53697A656361636865416C6C3A4E0A13676F70726F746F5F756E6B657965645F616C6C121C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7318BBEC03200128085211676F70726F746F556E6B65796564416C6C3A4A0A0F676F70726F746F5F67657474657273121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731881F40320012808520E676F70726F746F476574746572733A4C0A10676F70726F746F5F737472696E676572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731883F40320012808520F676F70726F746F537472696E6765723A460A0D766572626F73655F657175616C121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731884F40320012808520C766572626F7365457175616C3A350A0466616365121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731885F403200128085204666163653A3D0A08676F737472696E67121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731886F403200128085208676F737472696E673A3D0A08706F70756C617465121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731887F403200128085208706F70756C6174653A3D0A08737472696E676572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E7318C08B04200128085208737472696E6765723A3B0A076F6E6C796F6E65121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731889F4032001280852076F6E6C796F6E653A370A05657175616C121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E73188DF403200128085205657175616C3A430A0B6465736372697074696F6E121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E73188EF40320012808520B6465736372697074696F6E3A3B0A077465737467656E121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E73188FF4032001280852077465737467656E3A3D0A0862656E636867656E121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731890F40320012808520862656E636867656E3A3F0A096D61727368616C6572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731891F4032001280852096D61727368616C65723A430A0B756E6D61727368616C6572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731892F40320012808520B756E6D61727368616C65723A4C0A10737461626C655F6D61727368616C6572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731893F40320012808520F737461626C654D61727368616C65723A370A0573697A6572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731894F40320012808520573697A65723A4C0A10756E736166655F6D61727368616C6572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731897F40320012808520F756E736166654D61727368616C65723A500A12756E736166655F756E6D61727368616C6572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731898F403200128085211756E73616665556E6D61727368616C65723A570A16676F70726F746F5F657874656E73696F6E735F6D6170121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E731899F403200128085214676F70726F746F457874656E73696F6E734D61703A540A14676F70726F746F5F756E7265636F676E697A6564121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E73189AF403200128085213676F70726F746F556E7265636F676E697A65643A410A0A70726F746F73697A6572121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E73189CF40320012808520A70726F746F73697A65723A3B0A07636F6D70617265121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E73189DF403200128085207636F6D706172653A3D0A08747970656465636C121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E73189EF403200128085208747970656465636C3A430A0B6D6573736167656E616D65121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E7318A1F40320012808520B6D6573736167656E616D653A4E0A11676F70726F746F5F73697A656361636865121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E7318A2F403200128085210676F70726F746F53697A6563616368653A4A0A0F676F70726F746F5F756E6B65796564121F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E7318A3F40320012808520E676F70726F746F556E6B657965643A3B0A086E756C6C61626C65121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318E9FB032001280852086E756C6C61626C653A350A05656D626564121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318EAFB03200128085205656D6265643A3F0A0A637573746F6D74797065121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318EBFB0320012809520A637573746F6D747970653A3F0A0A637573746F6D6E616D65121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318ECFB0320012809520A637573746F6D6E616D653A390A076A736F6E746167121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318EDFB032001280952076A736F6E7461673A3B0A086D6F726574616773121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318EEFB032001280952086D6F7265746167733A3B0A086361737474797065121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318EFFB0320012809520863617374747970653A390A07636173746B6579121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318F0FB03200128095207636173746B65793A3D0A096361737476616C7565121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318F1FB032001280952096361737476616C75653A390A0773746474696D65121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318F2FB0320012808520773746474696D653A410A0B7374646475726174696F6E121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318F3FB0320012808520B7374646475726174696F6E3A3F0A0A776B74706F696E746572121D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7318F4FB0320012808520A776B74706F696E74657242450A13636F6D2E676F6F676C652E70726F746F627566420A476F476F50726F746F735A226769746875622E636F6D2F676F676F2F70726F746F6275662F676F676F70726F746F",
"google/protobuf/descriptor.proto":"0A20676F6F676C652F70726F746F6275662F64657363726970746F722E70726F746F120F676F6F676C652E70726F746F627566224D0A1146696C6544657363726970746F7253657412380A0466696C6518012003280B32242E676F6F676C652E70726F746F6275662E46696C6544657363726970746F7250726F746F520466696C6522E4040A1346696C6544657363726970746F7250726F746F12120A046E616D6518012001280952046E616D6512180A077061636B61676518022001280952077061636B616765121E0A0A646570656E64656E6379180320032809520A646570656E64656E6379122B0A117075626C69635F646570656E64656E6379180A2003280552107075626C6963446570656E64656E637912270A0F7765616B5F646570656E64656E6379180B20032805520E7765616B446570656E64656E637912430A0C6D6573736167655F7479706518042003280B32202E676F6F676C652E70726F746F6275662E44657363726970746F7250726F746F520B6D6573736167655479706512410A09656E756D5F7479706518052003280B32242E676F6F676C652E70726F746F6275662E456E756D44657363726970746F7250726F746F5208656E756D5479706512410A077365727669636518062003280B32272E676F6F676C652E70726F746F6275662E5365727669636544657363726970746F7250726F746F52077365727669636512430A09657874656E73696F6E18072003280B32252E676F6F676C652E70726F746F6275662E4669656C6444657363726970746F7250726F746F5209657874656E73696F6E12360A076F7074696F6E7318082001280B321C2E676F6F676C652E70726F746F6275662E46696C654F7074696F6E7352076F7074696F6E7312490A10736F757263655F636F64655F696E666F18092001280B321F2E676F6F676C652E70726F746F6275662E536F75726365436F6465496E666F520E736F75726365436F6465496E666F12160A0673796E746178180C20012809520673796E74617822B9060A0F44657363726970746F7250726F746F12120A046E616D6518012001280952046E616D65123B0A056669656C6418022003280B32252E676F6F676C652E70726F746F6275662E4669656C6444657363726970746F7250726F746F52056669656C6412430A09657874656E73696F6E18062003280B32252E676F6F676C652E70726F746F6275662E4669656C6444657363726970746F7250726F746F5209657874656E73696F6E12410A0B6E65737465645F7479706518032003280B32202E676F6F676C652E70726F746F6275662E44657363726970746F7250726F746F520A6E65737465645479706512410A09656E756D5F7479706518042003280B32242E676F6F676C652E70726F746F6275662E456E756D44657363726970746F7250726F746F5208656E756D5479706512580A0F657874656E73696F6E5F72616E676518052003280B322F2E676F6F676C652E70726F746F6275662E44657363726970746F7250726F746F2E457874656E73696F6E52616E6765520E657874656E73696F6E52616E676512440A0A6F6E656F665F6465636C18082003280B32252E676F6F676C652E70726F746F6275662E4F6E656F6644657363726970746F7250726F746F52096F6E656F664465636C12390A076F7074696F6E7318072001280B321F2E676F6F676C652E70726F746F6275662E4D6573736167654F7074696F6E7352076F7074696F6E7312550A0E72657365727665645F72616E676518092003280B322E2E676F6F676C652E70726F746F6275662E44657363726970746F7250726F746F2E526573657276656452616E6765520D726573657276656452616E676512230A0D72657365727665645F6E616D65180A20032809520C72657365727665644E616D651A7A0A0E457874656E73696F6E52616E676512140A0573746172741801200128055205737461727412100A03656E641802200128055203656E6412400A076F7074696F6E7318032001280B32262E676F6F676C652E70726F746F6275662E457874656E73696F6E52616E67654F7074696F6E7352076F7074696F6E731A370A0D526573657276656452616E676512140A0573746172741801200128055205737461727412100A03656E641802200128055203656E64227C0A15457874656E73696F6E52616E67654F7074696F6E7312580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E2A0908E8071080808080022298060A144669656C6444657363726970746F7250726F746F12120A046E616D6518012001280952046E616D6512160A066E756D62657218032001280552066E756D62657212410A056C6162656C18042001280E322B2E676F6F676C652E70726F746F6275662E4669656C6444657363726970746F7250726F746F2E4C6162656C52056C6162656C123E0A047479706518052001280E322A2E676F6F676C652E70726F746F6275662E4669656C6444657363726970746F7250726F746F2E54797065520474797065121B0A09747970655F6E616D651806200128095208747970654E616D65121A0A08657874656E6465651802200128095208657874656E64656512230A0D64656661756C745F76616C7565180720012809520C64656661756C7456616C7565121F0A0B6F6E656F665F696E646578180920012805520A6F6E656F66496E646578121B0A096A736F6E5F6E616D65180A2001280952086A736F6E4E616D6512370A076F7074696F6E7318082001280B321D2E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E7352076F7074696F6E7322B6020A0454797065120F0A0B545950455F444F55424C451001120E0A0A545950455F464C4F41541002120E0A0A545950455F494E5436341003120F0A0B545950455F55494E5436341004120E0A0A545950455F494E543332100512100A0C545950455F46495845443634100612100A0C545950455F464958454433321007120D0A09545950455F424F4F4C1008120F0A0B545950455F535452494E471009120E0A0A545950455F47524F5550100A12100A0C545950455F4D455353414745100B120E0A0A545950455F4259544553100C120F0A0B545950455F55494E543332100D120D0A09545950455F454E554D100E12110A0D545950455F5346495845443332100F12110A0D545950455F53464958454436341010120F0A0B545950455F53494E5433321011120F0A0B545950455F53494E543634101222430A054C6162656C12120A0E4C4142454C5F4F5054494F4E414C100112120A0E4C4142454C5F5245515549524544100212120A0E4C4142454C5F5245504541544544100322630A144F6E656F6644657363726970746F7250726F746F12120A046E616D6518012001280952046E616D6512370A076F7074696F6E7318022001280B321D2E676F6F676C652E70726F746F6275662E4F6E656F664F7074696F6E7352076F7074696F6E7322E3020A13456E756D44657363726970746F7250726F746F12120A046E616D6518012001280952046E616D65123F0A0576616C756518022003280B32292E676F6F676C652E70726F746F6275662E456E756D56616C756544657363726970746F7250726F746F520576616C756512360A076F7074696F6E7318032001280B321C2E676F6F676C652E70726F746F6275662E456E756D4F7074696F6E7352076F7074696F6E73125D0A0E72657365727665645F72616E676518042003280B32362E676F6F676C652E70726F746F6275662E456E756D44657363726970746F7250726F746F2E456E756D526573657276656452616E6765520D726573657276656452616E676512230A0D72657365727665645F6E616D65180520032809520C72657365727665644E616D651A3B0A11456E756D526573657276656452616E676512140A0573746172741801200128055205737461727412100A03656E641802200128055203656E642283010A18456E756D56616C756544657363726970746F7250726F746F12120A046E616D6518012001280952046E616D6512160A066E756D62657218022001280552066E756D626572123B0A076F7074696F6E7318032001280B32212E676F6F676C652E70726F746F6275662E456E756D56616C75654F7074696F6E7352076F7074696F6E7322A7010A165365727669636544657363726970746F7250726F746F12120A046E616D6518012001280952046E616D65123E0A066D6574686F6418022003280B32262E676F6F676C652E70726F746F6275662E4D6574686F6444657363726970746F7250726F746F52066D6574686F6412390A076F7074696F6E7318032001280B321F2E676F6F676C652E70726F746F6275662E536572766963654F7074696F6E7352076F7074696F6E732289020A154D6574686F6444657363726970746F7250726F746F12120A046E616D6518012001280952046E616D65121D0A0A696E7075745F747970651802200128095209696E70757454797065121F0A0B6F75747075745F74797065180320012809520A6F75747075745479706512380A076F7074696F6E7318042001280B321E2E676F6F676C652E70726F746F6275662E4D6574686F644F7074696F6E7352076F7074696F6E7312300A10636C69656E745F73747265616D696E671805200128083A0566616C7365520F636C69656E7453747265616D696E6712300A107365727665725F73747265616D696E671806200128083A0566616C7365520F73657276657253747265616D696E6722B3080A0B46696C654F7074696F6E7312210A0C6A6176615F7061636B616765180120012809520B6A6176615061636B61676512300A146A6176615F6F757465725F636C6173736E616D6518082001280952126A6176614F75746572436C6173736E616D6512350A136A6176615F6D756C7469706C655F66696C6573180A200128083A0566616C736552116A6176614D756C7469706C6546696C657312440A1D6A6176615F67656E65726174655F657175616C735F616E645F686173681814200128084202180152196A61766147656E6572617465457175616C73416E6448617368123A0A166A6176615F737472696E675F636865636B5F75746638181B200128083A0566616C736552136A617661537472696E67436865636B5574663812530A0C6F7074696D697A655F666F7218092001280E32292E676F6F676C652E70726F746F6275662E46696C654F7074696F6E732E4F7074696D697A654D6F64653A055350454544520B6F7074696D697A65466F72121D0A0A676F5F7061636B616765180B200128095209676F5061636B61676512350A1363635F67656E657269635F73657276696365731810200128083A0566616C73655211636347656E65726963536572766963657312390A156A6176615F67656E657269635F73657276696365731811200128083A0566616C736552136A61766147656E65726963536572766963657312350A1370795F67656E657269635F73657276696365731812200128083A0566616C73655211707947656E65726963536572766963657312370A147068705F67656E657269635F7365727669636573182A200128083A0566616C7365521270687047656E65726963536572766963657312250A0A646570726563617465641817200128083A0566616C7365520A64657072656361746564122F0A1063635F656E61626C655F6172656E6173181F200128083A0566616C7365520E6363456E61626C654172656E6173122A0A116F626A635F636C6173735F707265666978182420012809520F6F626A63436C61737350726566697812290A106373686172705F6E616D657370616365182520012809520F6373686172704E616D65737061636512210A0C73776966745F707265666978182720012809520B737769667450726566697812280A107068705F636C6173735F707265666978182820012809520E706870436C61737350726566697812230A0D7068705F6E616D657370616365182920012809520C7068704E616D65737061636512580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E223A0A0C4F7074696D697A654D6F646512090A0553504545441001120D0A09434F44455F53495A45100212100A0C4C4954455F52554E54494D4510032A0908E80710808080800222C5020A0E4D6573736167654F7074696F6E73123C0A176D6573736167655F7365745F776972655F666F726D61741801200128083A0566616C736552146D65737361676553657457697265466F726D6174124C0A1F6E6F5F7374616E646172645F64657363726970746F725F6163636573736F721802200128083A0566616C7365521C6E6F5374616E6461726444657363726970746F724163636573736F7212250A0A646570726563617465641803200128083A0566616C7365520A64657072656361746564121B0A096D61705F656E74727918072001280852086D6170456E74727912580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E2A0908E80710808080800222DC030A0C4669656C644F7074696F6E7312410A05637479706518012001280E32232E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E732E43547970653A06535452494E475205637479706512160A067061636B656418022001280852067061636B656412470A066A737479706518062001280E32242E676F6F676C652E70726F746F6275662E4669656C644F7074696F6E732E4A53547970653A094A535F4E4F524D414C52066A737479706512190A046C617A791805200128083A0566616C736552046C617A7912250A0A646570726563617465641803200128083A0566616C7365520A6465707265636174656412190A047765616B180A200128083A0566616C736552047765616B12580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E222F0A054354797065120A0A06535452494E47100012080A04434F5244100112100A0C535452494E475F5049454345100222350A064A5354797065120D0A094A535F4E4F524D414C1000120D0A094A535F535452494E471001120D0A094A535F4E554D42455210022A0908E80710808080800222730A0C4F6E656F664F7074696F6E7312580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E2A0908E80710808080800222BA010A0B456E756D4F7074696F6E73121F0A0B616C6C6F775F616C696173180220012808520A616C6C6F77416C69617312250A0A646570726563617465641803200128083A0566616C7365520A6465707265636174656412580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E2A0908E807108080808002229E010A10456E756D56616C75654F7074696F6E7312250A0A646570726563617465641801200128083A0566616C7365520A6465707265636174656412580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E2A0908E807108080808002229C010A0E536572766963654F7074696F6E7312250A0A646570726563617465641821200128083A0566616C7365520A6465707265636174656412580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E2A0908E80710808080800222E0020A0D4D6574686F644F7074696F6E7312250A0A646570726563617465641821200128083A0566616C7365520A6465707265636174656412710A116964656D706F74656E63795F6C6576656C18222001280E322F2E676F6F676C652E70726F746F6275662E4D6574686F644F7074696F6E732E4964656D706F74656E63794C6576656C3A134944454D504F54454E43595F554E4B4E4F574E52106964656D706F74656E63794C6576656C12580A14756E696E7465727072657465645F6F7074696F6E18E7072003280B32242E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E5213756E696E7465727072657465644F7074696F6E22500A104964656D706F74656E63794C6576656C12170A134944454D504F54454E43595F554E4B4E4F574E100012130A0F4E4F5F534944455F454646454354531001120E0A0A4944454D504F54454E5410022A0908E807108080808002229A030A13556E696E7465727072657465644F7074696F6E12410A046E616D6518022003280B322D2E676F6F676C652E70726F746F6275662E556E696E7465727072657465644F7074696F6E2E4E616D655061727452046E616D6512290A106964656E7469666965725F76616C7565180320012809520F6964656E74696669657256616C7565122C0A12706F7369746976655F696E745F76616C75651804200128045210706F736974697665496E7456616C7565122C0A126E656761746976655F696E745F76616C756518052001280352106E65676174697665496E7456616C756512210A0C646F75626C655F76616C7565180620012801520B646F75626C6556616C756512210A0C737472696E675F76616C756518072001280C520B737472696E6756616C756512270A0F6167677265676174655F76616C7565180820012809520E61676772656761746556616C75651A4A0A084E616D6550617274121B0A096E616D655F7061727418012002280952086E616D655061727412210A0C69735F657874656E73696F6E180220022808520B6973457874656E73696F6E22A7020A0E536F75726365436F6465496E666F12440A086C6F636174696F6E18012003280B32282E676F6F676C652E70726F746F6275662E536F75726365436F6465496E666F2E4C6F636174696F6E52086C6F636174696F6E1ACE010A084C6F636174696F6E12160A04706174681801200328054202100152047061746812160A047370616E1802200328054202100152047370616E12290A106C656164696E675F636F6D6D656E7473180320012809520F6C656164696E67436F6D6D656E7473122B0A11747261696C696E675F636F6D6D656E74731804200128095210747261696C696E67436F6D6D656E7473123A0A196C656164696E675F64657461636865645F636F6D6D656E747318062003280952176C656164696E674465746163686564436F6D6D656E747322D1010A1147656E657261746564436F6465496E666F124D0A0A616E6E6F746174696F6E18012003280B322D2E676F6F676C652E70726F746F6275662E47656E657261746564436F6465496E666F2E416E6E6F746174696F6E520A616E6E6F746174696F6E1A6D0A0A416E6E6F746174696F6E12160A047061746818012003280542021001520470617468121F0A0B736F757263655F66696C65180220012809520A736F7572636546696C6512140A05626567696E1803200128055205626567696E12100A03656E641804200128055203656E64425B0A13636F6D2E676F6F676C652E70726F746F627566421044657363726970746F7250726F746F7348015A0A64657363726970746F72F80101A20203475042AA021A476F6F676C652E50726F746F6275662E5265666C656374696F6E",
"etcd/mvcc/mvccpb/kv.proto":"0A19657463642F6D7663632F6D76636370622F6B762E70726F746F12066D76636370621A14676F676F70726F746F2F676F676F2E70726F746F22AE010A084B657956616C756512100A036B657918012001280C52036B657912270A0F6372656174655F7265766973696F6E180220012803520E6372656174655265766973696F6E12210A0C6D6F645F7265766973696F6E180320012803520B6D6F645265766973696F6E12180A0776657273696F6E180420012803520776657273696F6E12140A0576616C756518052001280C520576616C756512140A056C6561736518062001280352056C6561736522A3010A054576656E74122B0A047479706518012001280E32172E6D76636370622E4576656E742E4576656E745479706552047479706512200A026B7618022001280B32102E6D76636370622E4B657956616C756552026B7612290A07707265765F6B7618032001280B32102E6D76636370622E4B657956616C75655206707265764B7622200A094576656E745479706512070A035055541000120A0A0644454C45544510014214C8E11E00D0E11E00C8E21E01D0E21E01E0E21E01620670726F746F33",
"etcd/auth/authpb/auth.proto":"0A1B657463642F617574682F6175746870622F617574682E70726F746F12066175746870621A14676F676F70726F746F2F676F676F2E70726F746F224C0A045573657212120A046E616D6518012001280C52046E616D65121A0A0870617373776F726418022001280C520870617373776F726412140A05726F6C65731803200328095205726F6C6573229C010A0A5065726D697373696F6E12330A087065726D5479706518012001280E32172E6175746870622E5065726D697373696F6E2E5479706552087065726D5479706512100A036B657918022001280C52036B6579121B0A0972616E67655F656E6418032001280C520872616E6765456E64222A0A045479706512080A0452454144100012090A0557524954451001120D0A09524541445752495445100222540A04526F6C6512120A046E616D6518012001280C52046E616D6512380A0D6B65795065726D697373696F6E18022003280B32122E6175746870622E5065726D697373696F6E520D6B65795065726D697373696F6E4214C8E11E00D0E11E00C8E21E01D0E21E01E0E21E01620670726F746F33",
"google/api/http.proto":"0A15676F6F676C652F6170692F687474702E70726F746F120A676F6F676C652E61706922790A0448747470122A0A0572756C657318012003280B32142E676F6F676C652E6170692E4874747052756C65520572756C657312450A1F66756C6C795F6465636F64655F72657365727665645F657870616E73696F6E180220012808521C66756C6C794465636F64655265736572766564457870616E73696F6E22DA020A084874747052756C65121A0A0873656C6563746F72180120012809520873656C6563746F7212120A036765741802200128094800520367657412120A037075741803200128094800520370757412140A04706F737418042001280948005204706F737412180A0664656C6574651805200128094800520664656C65746512160A05706174636818062001280948005205706174636812370A06637573746F6D18082001280B321D2E676F6F676C652E6170692E437573746F6D487474705061747465726E48005206637573746F6D12120A04626F64791807200128095204626F647912230A0D726573706F6E73655F626F6479180C20012809520C726573706F6E7365426F647912450A136164646974696F6E616C5F62696E64696E6773180B2003280B32142E676F6F676C652E6170692E4874747052756C6552126164646974696F6E616C42696E64696E677342090A077061747465726E223B0A11437573746F6D487474705061747465726E12120A046B696E6418012001280952046B696E6412120A0470617468180220012809520470617468426A0A0E636F6D2E676F6F676C652E61706942094874747050726F746F50015A41676F6F676C652E676F6C616E672E6F72672F67656E70726F746F2F676F6F676C65617069732F6170692F616E6E6F746174696F6E733B616E6E6F746174696F6E73F80101A2020447415049620670726F746F33",
"google/api/annotations.proto":"0A1C676F6F676C652F6170692F616E6E6F746174696F6E732E70726F746F120A676F6F676C652E6170691A15676F6F676C652F6170692F687474702E70726F746F1A20676F6F676C652F70726F746F6275662F64657363726970746F722E70726F746F3A4B0A0468747470121E2E676F6F676C652E70726F746F6275662E4D6574686F644F7074696F6E7318B0CABC222001280B32142E676F6F676C652E6170692E4874747052756C65520468747470426E0A0E636F6D2E676F6F676C652E6170694210416E6E6F746174696F6E7350726F746F50015A41676F6F676C652E676F6C616E672E6F72672F67656E70726F746F2F676F6F676C65617069732F6170692F616E6E6F746174696F6E733B616E6E6F746174696F6E73A2020447415049620670726F746F33"
};
