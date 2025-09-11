import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Md Manik Hossain",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: DashBordScreen(),
    );
  }
}

class DashBordScreen extends StatelessWidget {
  const DashBordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrData = [
      "manik",
      "hossain",
      "fiver",
      "flutter",
      "developer",
      "app",
      "web",
      "software",
      "engineer",
      "mobile",
      "designer",
      "freelancer",
      "blogger",
      "youtuber",
      "programmer",
      "coder",
      "enthusiast",
      "learner",
      "teacher",
      "mentor",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
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
      body: Center(
        child: Container(
          child: Card(
            shadowColor: Colors.blue,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Md Manik Hossain",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
