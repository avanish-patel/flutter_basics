import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact Page"),
      ),
      body: Center(
        child: Text("Contact Page", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25.0),),
      ),
    );
  }
}
