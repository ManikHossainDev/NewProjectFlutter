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
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.deepOrange,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(   // ✅ fixed typo here
                      borderRadius: BorderRadius.circular(11),
                      borderSide: const BorderSide(
                        color: Colors.blueAccent,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                Container(height: 11,),
                TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.orangeAccent,
                            width: 2,
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blueAccent,
                            width: 2,
                          )
                      )
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
