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
        width: double.infinity,
        child: Wrap(
        // direction: Axis.vertical,
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceAround,
        runSpacing: 11,
        spacing: 11,
        children: [ 
         Container(
           width: 100,
           height: 100,
           color: Colors.amber
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.green
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.cyan
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.blue
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.blueAccent
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.deepOrange
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.indigo
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.lightGreen
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.blue
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.pink
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.teal
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.lime
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.red
         ),
         Container(
           width: 100,
           height: 100,
           color: Colors.purple
         ),
      ],)
      ),
    );
  }
}
