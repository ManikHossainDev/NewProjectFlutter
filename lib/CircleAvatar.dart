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
      theme: ThemeData(primarySwatch: Colors.blue),
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
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(150),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('assets/images/user.jpg'),
            backgroundColor: Colors.transparent,
            child: Align(
              alignment: Alignment( 0, 0.8,), 
              child: Text(
                "Md Manik Hossain",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
            ),
          ),
         )
      ),
    );
  }
}
