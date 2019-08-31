import "package:flutter/material.dart";

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
        title: FlutterLogo(colors: Colors.green, size: 25.0,),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: null, color: Colors.grey,),
        actions: <Widget>[
          IconButton(
            onPressed: null,
            icon: Icon(Icons.menu),
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.40),
                height: 100.0,
                color: Colors.white,
                child: Text("Get Coaching",style: TextStyle(fontFamily: "Montserrat",fontSize: 18.0,fontWeight: FontWeight.w500),),
              )
            ],
          )
        ],
      ),
    );
  }
}

