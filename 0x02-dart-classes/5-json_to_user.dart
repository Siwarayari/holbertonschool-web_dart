class User {
    int id;
    String name;
    int age;
    double height;

    User({required this.name,required this.age,required this.height,required this.id});

    Map toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
    };

static User fromJson(Map<dynamic, dynamic> userJson){
    return User(id: userJson['id'],
    name: userJson['name'],
    height: userJson['height'],
    age: userJson['age']);
}

@override
    String toString(){
        return 'User(id : ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
    }
}
