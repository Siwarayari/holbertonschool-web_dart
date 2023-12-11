import '1-util.dart';
import 'dart:convert';

Future<String> getUserId() async{
    String data = await fetchUserData();
    Map<String, dynamic> dataMap = jsonDecode(data);
    return dataMap["id"];
}
