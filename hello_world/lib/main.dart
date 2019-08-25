import 'package:flutter/material.dart';

void main() => runApp(HelloWorld());

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My first app",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Hello World")),
        ),
        body: Center(
            child: Text("Hello World",
                style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: Colors.green))),
      ),
    );
  }
}
