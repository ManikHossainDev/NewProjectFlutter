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
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 200,
          minHeight: 40,
          maxHeight: 80,
          maxWidth: 400,
        ),

        child: SizedBox.shrink(
          child: ElevatedButton(
            onPressed: () {
              print("button click");
            },
            child: Text("click now"),
          ),
        ),
      ),
    );
  }
}
