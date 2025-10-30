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
  State<DashBordScreen> createState() => AnimateContainers();
}

class AnimateContainers  extends State<DashBordScreen> {
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;

  Decoration myDecor = BoxDecoration(
    borderRadius:BorderRadius.circular(2),
    color: Colors.green,
  );

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              curve: Curves.ease,
              duration: Duration(milliseconds: 3000),
              decoration: myDecor,
            ),
            ElevatedButton(onPressed: () => {
              setState(() {
                if(flag){
                  _width = 100.0;
                  _height = 200.0;
                  myDecor = BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                    color: Colors.blueGrey

                  );
                  flag = false;
                }else {
                  flag = true;
                  _width = 200.0;
                  myDecor = BoxDecoration(
                      borderRadius:BorderRadius.circular(50),
                    color: Colors.yellow
                  );
                  _height = 100;
                }
              })

            }, child: Text("Animate"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Sets the background color
              ),
            )
          ],
        ),
      )
    );
  }
}
