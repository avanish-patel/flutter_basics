import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = "https://randomuser.me/api";
  String name ="Please Press Button!!!";

  Future<String> getUser() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    var extractData = json.decode(response.body);
    List data = extractData["results"];

    print(data[0]["name"]["first"]);

//    name = data[0]["name"]["first"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(60.0),
        ),
        Center(
          child: Text("Please Press Button!",style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w400),),
        ),
        Container(
          padding: EdgeInsets.all(60.0),
        ),
        Center(
          child: RaisedButton(
            child: Text(
              "Get User!",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            padding: EdgeInsets.all(10.0),
            onPressed: getUser,
            color: Colors.green,
          ),
        ),
      ],
    ));
  }
}
