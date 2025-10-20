import 'package:flutter/cupertino.dart';
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
      home: RangeSliders(),
    );
  }
}

class RangeSliders extends StatefulWidget {
  const RangeSliders({super.key});

  @override
  _RangeSlidersState createState() => _RangeSlidersState();
}

class _RangeSlidersState extends State<RangeSliders> {
  RangeValues values = RangeValues(0, 10);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());

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
        child: RangeSlider(
          // padding: EdgeInsets.all(10),
          values: values,
          labels: labels,
          activeColor: Colors.green,
          inactiveColor: Colors.blue.shade100,
          min: 0,
          max: 100,
          divisions: 5,
          onChanged: (newValue) {
            values = newValue;
            print('${newValue.start}, ${newValue.end}');
            setState(() {

            });
          },
        ),
      ),
    );
  }
}

