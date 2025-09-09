import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Md Manik Hossain",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DashBordScreen(),
    );
  }
}

class DashBordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

  var arrData  = ["manik", "hossain", "fiver", "flutter", "developer", "app", "web", "software",   "engineer", "mobile", "designer", "freelancer", "blogger", "youtuber", "programmer", "coder", "enthusiast", "learner", "teacher", "mentor",];

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "DashBord Screen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        // manik
      )
    );
  }
}
