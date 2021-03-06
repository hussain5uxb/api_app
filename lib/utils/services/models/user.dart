class User {
  int id;
  String name, email;
  User(int id, String name, email) {
    this.id = id;
    this.email = email;
    this.name = name;
  }
  User.fromjson(Map json)
      : id = json['id'],
        name = json['name'],
        email = json['email'];
  Map tojson() {
    return {id: 'id', name: 'name', email: 'email'};
  }
}
