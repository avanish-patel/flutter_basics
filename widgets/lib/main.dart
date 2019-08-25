import 'package:flutter/material.dart';


void main() =>
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String inputText = "";
  bool enabled = false;
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Widgets"),),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(padding: EdgeInsets.all(40.0),),
            Text(inputText.length == 0 ? "" : "Hi, " + inputText,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),
            Container(padding: EdgeInsets.all(40.0),),
            Container(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                decoration: InputDecoration(hintText: "Enter your name..."),
                onChanged: (String textInput) {
                  setState(() {
                    inputText = textInput;
                  });
                },
              ),
            ),
            Container(padding: EdgeInsets.all(40.0),),

            Container(child: Text(enabled.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),),),
            Switch(
              onChanged: (bool value) {
                setState(() {
                  enabled = value;
                });
              },
              value: enabled,
            ),
            Container(padding: EdgeInsets.all(40.0),),

            Checkbox(value: checked, onChanged: (val) {
              setState(() {
                checked = val;
              });
            })
          ],
        ),
      ),
    );
  }
}
