import 'dart:async';

import 'package:http/http.dart' as http;

const baseurl = "http://jsonplaceholder.typicode.com";

class Api {
  static Future getUsers() {
    var url = baseurl + '/users';
    return http.get(url);
  }
}

const baseurl2 = "http://jsonplaceholder.typicode.com/users";

class Apipost {
  static Future getpostuser() {
    // var urlpost = baseurl2 + "/users/1";
    return http.get('$baseurl2/1');
  }
}
