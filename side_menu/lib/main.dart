import 'package:flutter/material.dart';
import './aboutPage.dart' as about;
import './contactPage.dart' as contact;

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Side Menu"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Avanish Patel"),
              accountEmail: Text("avanishpatel@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
              ),
            ),
            ListTile(
              title: Text("About"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) =>about.AboutPage()));
              },
            ),
            ListTile(
              title: Text("Contact"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> contact.ContactPage()));

              },
            )
          ],
        ),
      ),
      body: Center(
        child: Text("Home Page",style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),),
      ),
    );
  }
}
