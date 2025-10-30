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
      home: const AnimatedCrossFadeWidget(),
    );
  }
}

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  State<AnimatedCrossFadeWidget> createState() => _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool _isFirstChild = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Manik Hossain",
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
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 2),
          firstChild: Container(
            width: 200,
            height: 200,
            color: Colors.grey.shade200,
            child: const Center(child: Text("First Child")),
          ),
          secondChild: Image.asset(
            'assets/images/user.jpg',
            width: 200,
            height: 200,
          ),
          crossFadeState: _isFirstChild
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isFirstChild = !_isFirstChild;
          });
        },
        child: const Icon(Icons.swap_horiz),
      ),
    );
  }
}
