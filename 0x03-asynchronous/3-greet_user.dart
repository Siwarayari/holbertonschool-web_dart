import '3-util.dart';
import 'dart:convert';
greetUser() async{
    try{
        String data = await fetchUserData();
        Map<String, dynamic> dataMap = jsonDecode(data);
        return "Hello ${dataMap["username"]}";
    }
    catch(e){
        print("error caught: $e");
    }
}

loginUser() async {
    try{
        bool data = await checkCredentials();
        print("There is a user: $data");
        if (data) {
            return await greetUser();
        }
        else{
            return "Wrong credentials";
        }
    }
    catch(e){
        print("error caught: $e");
    }
}
