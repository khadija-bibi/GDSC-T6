import 'package:flutter/material.dart';
import 'package:task_6/home.dart';
import 'package:task_6/info.dart';
import 'package:task_6/variety.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,

      home:Home(),
    );
  }
}

