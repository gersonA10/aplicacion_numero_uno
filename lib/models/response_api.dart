// import 'dart:convert';

// ResponseApi responseApiFromJson(String str) => ResponseApi.fromJson(json.decode(str));

// String responseApiToJson(ResponseApi data) => json.encode(data.toJson());

class ResponseApi {
    final int errorCode;
    final String message;
    final List token;

    ResponseApi({
        required this.errorCode,
        required this.message,
        required this.token,
    });

    factory ResponseApi.fromJson(Map<String, dynamic> json) 
    {
      return ResponseApi(
        errorCode: json["errorCode"],
        message: json["message"],
        token: json["token"],
    );
    }
    

    // Map<String, dynamic> toJson() => {
    //     "errorCode": errorCode,
    //     "message": message,
    //     "token": token,
    // };
}
