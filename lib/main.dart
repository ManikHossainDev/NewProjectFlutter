import 'package:flutter/material.dart';
import 'package:newproject/IntroPage.dart';
import 'package:newproject/IntroSplash.dart';

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
      home: IntroPage(),
    );
  }
}

class DashBordScreens extends StatelessWidget {

  var namefromHome ;

  DashBordScreens(this.namefromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manik Hossain",
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcone,  $namefromHome",
              style: TextStyle(
                fontSize: 38,
                color: Colors.green,
                fontWeight: FontWeight.w700
              ),
            ),

            ElevatedButton(onPressed:(){
            }, child: Text("manik", style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
            ),),)
          ],
        )
      ),
    );
  }
}
