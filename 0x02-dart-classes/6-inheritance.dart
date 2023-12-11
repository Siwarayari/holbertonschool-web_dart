import '6-password.dart';

class User extends Password {
    int id;
    String name;
    int age;
    double height;
    String user_password;

    User({required this.name,required this.age,required this.height,required this.id,required this.user_password}) : super(password: user_password);

    Map toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
        'user_password': user_password,
    };

static User fromJson(Map<dynamic, dynamic> userJson){
    return User(id: userJson['id'],
    name: userJson['name'],
    height: userJson['height'],
    age: userJson['age'],
    user_password: userJson['user_password']);
}

@override
    String toString(){
        return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height}, Password: ${isValid(user_password)})';
    }
}
