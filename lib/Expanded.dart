import 'package:flutter/material.dart';

void main() {
  runApp(Expandeds());
}

class Expandeds extends StatelessWidget {
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
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Expanded(
      //       flex:3,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue.shade50,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 5,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue.shade100,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: Colors.blue.shade200,
      //       ),
      //     ),
      //     Expanded(
      //       flex: 2,
      //       child: Container(
      //         width: 100,
      //         height: 100,
      //         color: const Color.fromARGB(255, 62, 159, 238),
      //       ),
      //     ),
      //   ],
      // ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 3,
            child: Container(height: 100, color: Colors.blue.shade50),
          ),
          Expanded(
            flex: 5,
            child: Container(height: 100, color: Colors.blue.shade100),
          ),
          Expanded(
            flex: 3,
            child: Container(height: 100, color: Colors.blue.shade200),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              color: const Color.fromARGB(255, 62, 159, 238),
            ),
          ),
        ],
      ),
    );
  }
}
