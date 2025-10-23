
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

  var result = "";

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
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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

              TextFormField(
                 controller: inController,
                decoration: InputDecoration(
                  label: Text("Enter Your Weight (in)"),
                  prefixIcon: Icon(Icons.blur_linear),
              ),
                  keyboardType: TextInputType.number
              ),

              SizedBox(height: 18),

              ElevatedButton(onPressed: (){

                var wt = wtController.text.toString();
                var ft=ftController.text.toString();
                var inch = inController.text.toString();

                 if(wt!="" && ft!="" && inch!=""){
                   // calculat
                 }else {
                    setState(() {
                      result = "please fill all the required blanks!!";
                    });
                 }
              },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5, // shadow
                  ),
                  child: Text("Calculator")),
                Text(result, style: TextStyle(fontSize: 34, fontWeight: FontWeight.w600, color: Colors.green),)
            ],
          ),
        ),
      )
    );
  }
}