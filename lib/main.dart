import 'package:api_app/home.dart';
import 'package:api_app/main2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

// Future<Album> _future() async {
//   final res =
//       await http.get(Uri.https('jsonplaceholder.typicode.com', "albums/1"));
//   if (res.statusCode == 200) {
//     return Album.fromjson(jsonDecode(res.body));
//   } else {
//     throw Expando('404');
//   }
// }

// class Album {
//   final int id;
//   final int userId;
//   final String title;
//   Album({this.id, this.title, this.userId});
//   factory Album.fromjson(Map<String, dynamic> json) {
//     return Album(id: json['id'], title: json['title'], userId: json['userId']);
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, color: Colors.amber, home: Main2());
  }
}

// class MyHomePage extends StatefulWidget {
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   initState() {
//     super.initState();
//     _future().then((value) {
//       print(value.title);
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Api'),
//         backgroundColor: Colors.amber,
//       ),
//       body: Center(
//           child: FutureBuilder<Album>(
//         builder: (context, snapshot) {
//           return ListTile(
// //tileColor: Colors.blueAccent,
//             title: Text(
//               snapshot.data.title,
//               style: TextStyle(
//                   color: Colors.red, fontStyle: FontStyle.italic, fontSize: 35),
//             ),
//           );
//         },
//         future: _future(),
//       )),
//     );
//   }
// }
