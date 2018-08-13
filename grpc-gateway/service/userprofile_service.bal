// This is the server implementation for the unary blocking/unblocking scenario.
import ballerina/io;
import ballerina/grpc;

// The server endpoint configuration.
endpoint grpc:Listener listener {
    host:"localhost",
    port:9090
};

service UserProfile bind listener {

    map<User> userMap = { "-1": {id:"0", info:{name:"Danesh",age:25,email:"dknkuruppu@gmail.com"}}};
    int nextUserNo = 1;

    addUser(endpoint caller, UserInfo userInfo) {
        io:print("Adding new user: ");
        io:print(userInfo);
        if (userInfo.name == "") {
            _ = caller->sendError(grpc:ABORTED, "User doesn't have a name");
        } else {
            User user = {id:<string>nextUserNo, info: userInfo};
            //user.id = <string>nextUserNo;
            userMap[user.id] = user;
            string respMsg = "user id " + user.id + " created successfully.";
            nextUserNo++;
            error? err = caller->send(respMsg);
            io:println(err.message but {
                    () => "Server send response : " + respMsg });
        }
    }

    getUser(endpoint caller, string id) {
        io:print("Reading user information. user id: " + id);
        if (userMap.hasKey(id)) {
            User user = userMap[id] but {()=>{}};
            error? err = caller->send(user);
            io:println(err.message but { () => "Server send response with user info : " + id });
        } else {
            _ = caller->sendError(grpc:ABORTED, "User doesn't exist with id: " + <string>id);
        }
    }

    updateUser(endpoint caller, User user) {
        io:print("Updating existing user: " + <string>user.id + " ");
        io:print(user);
        if (userMap.hasKey(user.id)) {
            if (user.info.name == ()) {
                _ = caller->sendError(grpc:ABORTED, "New user info doesn't have a name");
            } else {
                userMap[user.id] = user;
                string respMsg = "user id " + <string>user.id + " updated successfully.";
                error? err = caller->send(respMsg);
                io:println(err.message but {
                        () => "Server send response : " + respMsg });
            }
        } else {
            _ = caller->sendError(grpc:ABORTED, "User doesn't exist with id: " + user.id);
        }
    }

    deleteUser(endpoint caller, string id) {
        io:print("Deleting user information. user id: " + id);
        if (userMap.hasKey(id)) {
            boolean result = userMap.remove(id);
            if (result) {
                string respMsg = "user id " + <string>id + " deleted successfully.";
                error? err = caller->send(respMsg);
                io:println(err.message but {
                        () => "Server send response : " + respMsg });
            } else {
                _ = caller->sendError(grpc:INTERNAL, "Error while deleting user id: " + id);
            }
        } else {
            _ = caller->sendError(grpc:ABORTED, "User doesn't exist with id: " + id);
        }
    }

    getAllUsers(endpoint caller) {
        Users usrs;
        int i = 0;
        foreach k,usr in userMap {
            usrs.users[i] = usr;
            i++;
        }
        error? err = caller->send(usrs);
        io:println(err.message but { () => "Server send response with user details, No : " + i });
    }
}

type Users record {
    User[] users;
};

type User record {
    string id;
    UserInfo info;
};

type UserInfo record {
    string name;
    int age;
    string email;
};