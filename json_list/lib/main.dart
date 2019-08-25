import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String url = "https://randomuser.me/api?results=25";
  List data;

  Future<String> getUser() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extraction = json.decode(response.body);
      data = extraction["results"];
    });
  }

  @override
  void initState() {
    this.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
      ),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(data[i]["picture"]["thumbnail"]),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Profile(data[i])));
              },
              title: Text(
                data[i]["name"]["first"] + " " + data[i]["name"]["last"],
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text(data[i]["phone"].toString()),
            );
          }),
    );
  }
}

class Profile extends StatelessWidget {
  final data;

  Profile(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Center(
          child: Container(
            height: 175.0,
            width: 175.0,
            decoration: BoxDecoration(
                color: const Color(0xffc7),
                image: DecorationImage(
                  image: NetworkImage(data["picture"]["large"]),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(87.5)),
                border: Border.all(color: Colors.green, width: 4.0)),
          ),
        ));
  }
}
