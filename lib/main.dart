import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:plant_health/modelHelper.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new MySplash(),
    theme: new ThemeData(
      primarySwatch: Colors.green,
    ),
  ));
}

class MySplash extends StatefulWidget {
  @override
  _MySplashState createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.white,
      image: Image.asset("images/logo.jpeg"),
      photoSize: 150.0,
      loaderColor: Colors.green,
      navigateAfterSeconds: App(),
      loadingText: Text(
        "Welcome to plant Health",
        style: new TextStyle(color: Colors.green, fontSize: 20.0),
      ),
    );
  }
}
