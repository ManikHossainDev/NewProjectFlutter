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
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           Container(width: 100, height: 100, color: Colors.blue.  shade50),
           Expanded(
            child:Container(width: 100, height: 100, color: Colors.blue.  shade100),
           ), 
           Container(width: 100, height: 100, color: Colors.yellow.shade500,)
          ],
      ),
    );
  }
}
