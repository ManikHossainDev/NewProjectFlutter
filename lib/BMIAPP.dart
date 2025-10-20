
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
      home: BMIAPP(),
    );
  }
}

class BMIAPP extends StatefulWidget {
  const BMIAPP({super.key});
  @override
  BMIAPPState createState() => BMIAPPState();
}


class BMIAPPState extends State<BMIAPP> {

  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Manik Hossain",
          style: TextStyle(
            fontSize: 34,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(height: 11),
          Text("BMI", style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade400
          ),),

          SizedBox(height: 11),
          TextField(
            controller:wtController ,
            decoration:  InputDecoration(
              label: Text("Enter Your Weight(in kgs)"),
              prefixIcon: Icon(Icons.line_weight)
            ),
            keyboardType: TextInputType.number,
          ),

          SizedBox(height: 11),

          TextField(
            controller:ftController ,
            decoration:  InputDecoration(
                label: Text("Enter Your Weight(in)"),
                prefixIcon: Icon(Icons.line_style)
            ),
            keyboardType: TextInputType.number,
          ),

          SizedBox(height: 11),

          TextField(
             controller: inController,
            decoration: InputDecoration(
              label: Text("Enter Your Weight (in)"),
              prefixIcon: Icon(Icons.blur_linear),
          ),
              keyboardType: TextInputType.number
          )

        ],
      )
    );
  }
}