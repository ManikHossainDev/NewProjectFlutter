import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
      body: Column(
        children: [
          Text("Selected Date", style: TextStyle(fontSize: 25)),
          ElevatedButton(
            child: Text("show"),
            onPressed: () async {
              DateTime? dataPicked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2020),
                lastDate: DateTime(2030),
              );

              if (dataPicked != null) {
                print('Date Selected: $dataPicked');
              }
            },
          ),
        ],
      ),
    );
  }
}
