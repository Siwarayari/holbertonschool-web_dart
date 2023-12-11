import '0-util.dart';
Future<void> usersCount() async {
    int usersCount = await fetchUsersCount();
    print(usersCount);
}
