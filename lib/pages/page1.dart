import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black)),
              width: 250,
              height: 250,
              child: Container(
                margin: EdgeInsets.all(
                    26.0), // Sets a margin of 16 pixels around the container
                padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal:
                        16.0), // Sets padding of 8 pixels vertically and 16 pixels horizontally within the container
                color: Colors.blue,
                child: Text('Hello, Flutter!'),
              ))),
    );
  }
}
