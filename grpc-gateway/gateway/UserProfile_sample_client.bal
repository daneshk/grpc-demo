import ballerina/io;
import ballerina/grpc;
import ballerina/http;

endpoint UserProfileBlockingClient userProfileBlockingEp {
    url:"http://localhost:9090"
};

@http:ServiceConfig {
    basePath: "/v1/user"
}
service<http:Service> sample bind { port: 9091 } {

    @http:ResourceConfig {
        methods: ["GET"],
        path: "/{userid}"
    }
    getUser(endpoint caller, http:Request req, string userid) {
        var unionResp = userProfileBlockingEp->getUser(userid);


        // Reads message and headers from response.
        match unionResp {
            (User, grpc:Headers) payload => {
                User result;
                (result, _) = payload;
                io:println("Client Got Response : ");
                io:println(result);
                json responseJson = check <json>result;
                http:Response res = new;
                // A util method to set the JSON payload to the response message.
                res.statusCode = 200;
                res.setJsonPayload(untaint responseJson);
                // Send a response to the client.
                caller->respond(res) but { error e => io:println("Error when responding " + e.message) };
            }
            error err => {
                http:Response res = new;
                io:println("Error from Connector: " + err.message);
                res.statusCode = 500;
                res.setPayload(untaint err.message);
                caller->respond(res) but {
                    error e => io:println("Error sending response" + e.message)
                };
            }
        }
    }

    @http:ResourceConfig {
        methods: ["POST"],
        path: "/"
    }
    addUser(endpoint caller, http:Request req) {
        // The client starts sending the payload once it receives the 100-continue response.
        // Retrieve the payload that is sent by the client.
        http:Response res = new;
        match req.getJsonPayload() {
            json reqPayload => {
                io:println(reqPayload);
                // Executes unary blocking call with headers.
                UserInfo userInfo = check <UserInfo>reqPayload;
                var unionResp = userProfileBlockingEp->addUser(userInfo);
                // Reads message and headers from response.
                match unionResp {
                    (string, grpc:Headers) resPayload => {
                        string result;
                        grpc:Headers resHeaders;
                        (result, resHeaders) = resPayload;
                        io:println("Client Got Response : ");
                        io:println(result);
                        res.statusCode = 201;
                        res.setPayload(result);
                        caller->respond(res) but {
                            error e => io:println("Error sending response" + e.message)
                        };
                    }
                    error err => {
                        io:println("Error from Connector: " + err.message);
                        res.statusCode = 500;
                        res.setPayload(untaint err.message);
                        caller->respond(res) but {
                            error e => io:println("Error sending response" + e.message)
                        };
                    }
                }
            }
            error err => {
                res.statusCode = 500;
                res.setPayload(untaint err.message);
                caller->respond(res) but {
                    error e => io:println("Error sending response" + e.message)
                };
            }
        }
    }

    @http:ResourceConfig {
        methods: ["PUT"],
        path: "/{userid}"
    }
    updateUser(endpoint caller, http:Request req, string userid) {
        http:Response res = new;
        match req.getJsonPayload() {
            json reqPayload => {
                io:println(reqPayload);
                // Executes unary blocking call with headers.
                UserInfo userInfo = check <UserInfo>reqPayload;
                User user = {id:userid, info: userInfo};
                var unionResp = userProfileBlockingEp->updateUser(user);
                // Reads message and headers from response.
                match unionResp {
                    (string, grpc:Headers) resPayload => {
                        string result;
                        grpc:Headers resHeaders;
                        (result, resHeaders) = resPayload;
                        io:println("Client Got Response : ");
                        io:println(result);
                        res.statusCode = 201;
                        res.setPayload(result);
                        caller->respond(res) but {
                            error e => io:println("Error sending response" + e.message)
                        };
                    }
                    error err => {
                        io:println("Error from Connector: " + err.message);
                        res.statusCode = 500;
                        res.setPayload(untaint err.message);
                        caller->respond(res) but {
                            error e => io:println("Error sending response" + e.message)
                        };
                    }
                }
            }
            error err => {
                res.statusCode = 500;
                res.setPayload(untaint err.message);
                caller->respond(res) but {
                    error e => io:println("Error sending response" + e.message)
                };
            }
        }
    }

    @http:ResourceConfig {
        methods: ["DELETE"],
        path: "/{userid}"
    }
    deleteUser(endpoint caller, http:Request req, string userid) {
        var unionResp = userProfileBlockingEp->deleteUser(userid);
        http:Response res = new;
        // Reads message and headers from response.
        match unionResp {
            (string, grpc:Headers) resPayload => {
                string result;
                grpc:Headers resHeaders;
                (result, resHeaders) = resPayload;
                io:println("Client Got Response : ");
                io:println(result);
                res.statusCode = 200;
                res.setPayload(result);
                caller->respond(res) but {
                    error e => io:println("Error sending response" + e.message)
                };
            }
            error err => {
                io:println("Error from Connector: " + err.message);
                res.statusCode = 500;
                res.setPayload(untaint err.message);
                caller->respond(res) but {
                    error e => io:println("Error sending response" + e.message)
                };
            }
        }
    }

    @http:ResourceConfig {
        methods: ["GET"],
        path: "/"
    }
    getAllUsers(endpoint caller, http:Request req) {
        var unionResp = userProfileBlockingEp->getAllUsers();

        // Reads message and headers from response.
        match unionResp {
            (Users, grpc:Headers) payload => {
                Users result;
                (result, _) = payload;
                io:println("Client Got Response : ");
                io:println(result);
                json responseJson = check <json>result.users;
                http:Response res = new;
                // A util method to set the JSON payload to the response message.
                res.statusCode = 200;
                res.setJsonPayload(untaint responseJson);
                // Send a response to the client.
                caller->respond(res) but { error e => io:println("Error when responding " + e.message) };
            }
            error err => {
                http:Response res = new;
                io:println("Error from Connector: " + err.message);
                res.statusCode = 500;
                res.setPayload(untaint err.message);
                caller->respond(res) but {
                    error e => io:println("Error sending response" + e.message)
                };
            }
        }
    }
}
