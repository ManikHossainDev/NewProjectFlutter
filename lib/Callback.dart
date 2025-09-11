import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
  final arrColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.brown,
    Colors.cyan,
    Colors.indigo,
    Colors.teal,
    Colors.amber,
    Colors.deepOrange,
    Colors.lightGreen,
    Colors.lime,
    Colors.pink,
    Colors.deepPurple,
    Colors.yellow,
    Colors.grey,
    Colors.blueGrey,
  ];

  callBack() {
    print("Clicked button");
  }

  @override
  Widget build(BuildContext context) {
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
      body: ElevatedButton(child: Text("Click Me"), onPressed: callBack),
    );
  }
}
