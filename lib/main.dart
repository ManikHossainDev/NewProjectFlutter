import 'package:flutter/material.dart';
import 'package:newproject/uihelper/util.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Md Manik Hossain",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
          titleMedium: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w300,
            color: Colors.grey,
          ),
        ),
      ),
      home: DashBordScreen(),
    );
  }
}

class DashBordScreen extends StatelessWidget {
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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              "Circle Avatar",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.blue,
                  ),
            ),
            Text(
              "sub Circle Avatar",
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "Circle Avatar",
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Colors.orange,
                  ),
            ),
            Text(
              "sub Circle Avatar",
              style: mtextStyle33(),
            ),
          ],
        ),
      ),
    );
  }
}
