import 'package:flutter/material.dart';
import 'package:flutter_code_examples/pages/home.dart';
import 'package:flutter_code_examples/pages/page1.dart';
import 'package:flutter_code_examples/pages/page2.dart';
import 'package:flutter_code_examples/widgets/ideal_source_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/buttons': (context) => IdealSourceForButtons(),
      },
    );
  }
}
