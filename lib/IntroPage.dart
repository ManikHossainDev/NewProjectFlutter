import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/main.dart';

class IntroPage extends StatelessWidget {

  var nameController =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro",
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
            Text("Welcome page",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            TextField(
              controller: nameController,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DashBordScreens(nameController.text),
                ),
              );
            }, child: Text("Next"))
          ],
        ),
      )
    );
  }
}





//main page  this code


// import 'package:flutter/material.dart';
// import 'package:newproject/IntroPage.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Md Manik Hossain",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: IntroPage(),
//     );
//   }
// }
//
// class DashBordScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Manik Hossain",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 20,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Text("manik"),
//     );
//   }
// }
