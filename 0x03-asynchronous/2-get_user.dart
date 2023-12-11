import '2-util.dart';
Future<void> getUser() async {
    try{
        String usersCount = await fetchUser();
    }
    catch(e){
        print("error caught: Cannot locate user");
    }
}
