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
      body: Container(
        width: 300,
        height: 300,
        child: Stack(
          children: [
            Container(width: 200, height: 200, color: Colors.amber),
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.limeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
