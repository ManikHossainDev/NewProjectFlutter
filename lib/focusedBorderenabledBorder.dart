import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
  const DashBordScreen({super.key});

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
          width: 320,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // 🔹 Normal Enabled TextField
              TextField(
                decoration: InputDecoration(
                  labelText: "Enabled Field",
                  hintText: "Type here",
                  suffixText: "Ok",
                  suffixIcon: Icon(Icons.check_circle, color: Colors.green),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange,
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Disabled TextField
              TextField(
                enabled: false,
                decoration: InputDecoration(
                  labelText: "Disabled Field",
                  hintText: "Can't type here",
                  suffixText: "Blocked",
                  suffixIcon: Icon(Icons.block, color: Colors.grey),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.yellowAccent,
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Focused / Editable TextField
              TextField(
                decoration: InputDecoration(
                  labelText: "Focused Border",
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.orange),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.deepOrange,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 Error Border
              TextField(
                decoration: InputDecoration(
                  labelText: "Error Field",
                  errorText: "Invalid input",
                  suffixIcon: Icon(Icons.error, color: Colors.red),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.redAccent,
                      width: 2,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
