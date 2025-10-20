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
      body: ConstrainedBox(
        constraints: BoxConstraints(
          // maxHeight: 200
            minHeight: 20,
            minWidth: 300,
            maxWidth: 350
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.blue), // Set the background color

          ),
          onPressed: () {},
          child: Text("Click"),
        ),

        // child: Text(
        //    'Manik Hossain ',
        //   style: TextStyle(
        //       fontSize: 21,
        //       overflow: TextOverflow.fade
        //   ),
        // ),
      ),
    );
  }
}
