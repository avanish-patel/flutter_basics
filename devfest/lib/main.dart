import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utils/devfest.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<void> main() async {

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.transparent)
  );

  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]
  );

  DevFest.preferences = await SharedPreferences.getInstance();

  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Google DevFest",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
      ),
      home: Container(),
    );
  }
}