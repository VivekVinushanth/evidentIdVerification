import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + evidentIDReqUUID - the input string name
    # + return - string name with hello message or error
    resource function get verificationStatus(string evidentIDReqUUID) returns string|error {
        if evidentIDReqUUID is "" {
            return error("evidentIDReqUUID cannot not be empty!");
        }
        return "Hello, " + evidentIDReqUUID;
    }
}
