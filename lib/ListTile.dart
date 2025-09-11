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
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                arrData[index].toString().substring(0, 1).toUpperCase(),
              ),
            ),
            title: Text(arrData[index]),
            subtitle: Text("This is subtitle"),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Colors.blue,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(height: 30, thickness: 2);
        },
        itemCount: arrData.length,
      ),
    );
  }
}
