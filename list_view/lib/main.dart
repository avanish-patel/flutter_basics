import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "List View",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Chat App")),
          ),
          body: MyList()),
    );
  }
}

class MyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(4.0),
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(
            "Jone Doe" + i.toString(),
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            (i % 2 == 0) ? "Online" : "Offline",
            style: TextStyle(color: (i % 2 == 0) ? Colors.green : Colors.red),
          ),
          leading: const Icon(Icons.face),
        );
      },
    );
  }
}
