import 'dart:convert';
import 'package:api_app/home.dart';
import 'package:api_app/utils/services/Api.dart';
import 'package:api_app/utils/services/models/user.dart';
import 'package:flutter/material.dart';

class Main2 extends StatefulWidget {
  @override
  _Main2State createState() => _Main2State();
}

class _Main2State extends State<Main2> {
  var users = new List<User>();

  _getusers() {
    Api.getUsers().then((value) {
      setState(() {
        Iterable list = json.decode(value.body);
        users = list.map((model) => User.fromjson(model)).toList();
      });
    });
  }

  void initState() {
    super.initState();
    _getusers();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'API',
          style: TextStyle(color: Colors.green),
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              color: Colors.green,
              child: ListTile(
                  title: Text(
                    users[index].name,
                    style: TextStyle(color: Colors.yellow),
                  ),
                  onTap: () {
                    setState(() {
                      switch (users[index].name) {
                        case "Leanne Graham":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "Ervin Howell":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "Clementine Bauch":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "Patricia Lebsack":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "Chelsey Dietrich":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "Mrs. Dennis Schulist":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "Kurtis Weissnat":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                        case "Nicholas Runolfsdottir V":
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                          break;
                      }
                    });

                    // setState(() {
                    //   switch (users[index].id) {
                    //     case 1:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 2:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 3:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 4:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 5:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 6:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 7:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 8:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 9:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //     case 10:
                    //       Navigator.push(context,
                    //           MaterialPageRoute(builder: (context) => Home()));
                    //       break;
                    //   }
                    // });
                  }),
            ),
          );
        },
      ),
    );
  }
}
