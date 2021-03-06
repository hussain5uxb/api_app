import 'dart:convert';
import 'package:api_app/utils/services/Api.dart';
import 'package:api_app/utils/services/models/user_post.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userpost = new List<UserPost>();

  _getuserpost() {
    Apipost.getpostuser().then((response) {
      setState(() {
        var list2 = json.decode(response.body);
        // userpost = list2.map((model2) => UserPost.fromjson(model2)).toList();
        // userpost = list2.map((model2) => UserPost.fromjson(model2));
        return list2;
      });
    });
  }

  void initState() {
    super.initState();
    _getuserpost();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5.0,
          backgroundColor: Colors.amber,
          title: Text('user_post')),
      body: FutureBuilder<UserPost>(
        builder: (context, snapshot) {
          return Text('${snapshot.data.name}');
        },
        future: _getuserpost(),
      ),
      // body: ListView.builder(
      //   itemCount: userpost.length,
      //   itemBuilder: (context, index) {
      //     return Container(
      //       child: Card(
      //         color: Colors.yellow,
      //         child: Column(
      //           children: [
      //             ListTile(
      //               title: Text(userpost[index].id.toString()),
      //             ),
      //             ListTile(
      //               title: Text(userpost[index].name),
      //             ),
      //             ListTile(
      //               title: Text(userpost[index].username),
      //             ),
      //             ListTile(
      //               title: Text(userpost[index].email),
      //             ),
      //             ListTile(
      //               title: Text(userpost[index].phone),
      //             ),
      //             ListTile(
      //               title: Text(userpost[index].website),
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
