class UserPost {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;
  UserPost(int id, String name, String username, String email, String phone,
      String website) {
    this.id = id;
    this.name = name;
    this.username = username;
    this.email = email;
    this.phone = phone;
    this.website = website;
  }

  UserPost.fromjson(Map json2)
      : id = json2['id'],
        name = json2['name'],
        username = json2['username'],
        email = json2['email'],
        phone = json2['phone'],
        website = json2['website'];
  Map tojson() {
    return {
      id: 'id',
      name: 'name',
      username: 'username',
      email: 'email',
      phone: 'phone',
      website: 'website'
    };
  }
}
