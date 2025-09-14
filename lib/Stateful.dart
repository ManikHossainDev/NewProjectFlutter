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

class DashBordScreen extends StatefulWidget {
  const DashBordScreen({super.key});
  @override
  State<DashBordScreen> createState() => _DashBordScreenState();
}

class _DashBordScreenState extends State<DashBordScreen> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

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
        color: Colors.blue.shade200,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 + no2;

                          result = "the sum of $no1 and $no2 is $sum";

                          setState(() {});
                        },
                        child: Text("Add"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var sum = no1 - no2;

                          result = "the sum of $no1 and $no2 is $sum";

                          setState(() {});
                        },
                        child: Text("Sub"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.toString());
                          var no2 = int.parse(no2Controller.text.toString());

                          var product = no1 * no2;

                          result = "the Product of $no1 and $no2 is $product";

                          setState(() {});
                        },
                        child: Text("Mult"),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          var no1 = int.parse(no1Controller.text.trim());
                          var no2 = int.parse(no2Controller.text.trim());

                          var div = no1 / no2;
                          result = "The  of $no1 by $no2 is ${div.toStringAsFixed(2)}";

                          setState(() {});
                        },
                        child: Text("Div"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    result,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
