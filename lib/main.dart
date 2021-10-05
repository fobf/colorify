import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(Colorify());
}

// ignore: use_key_in_widget_constructors
class Colorify extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorifyPage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class ColorifyPage extends StatefulWidget {
  @override
  State<ColorifyPage> createState() => _ColorifyPageState();
}

class _ColorifyPageState extends State<ColorifyPage> {
  var color = const Color.fromARGB(255, 255, 255, 255);
  randomNumber() {
    int randomNumber = Random().nextInt(256);
    return randomNumber;
  }

  void randomColor() {
    setState(() {
      color =
          Color.fromARGB(255, randomNumber(), randomNumber(), randomNumber());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: randomColor,
        child: Container(
          color: color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Hey there',
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
