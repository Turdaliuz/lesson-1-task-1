import 'package:flutter/material.dart';
import 'package:lesson_1_task_1/home_page.dart';
import 'package:lesson_1_task_1/page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bu flutter 1-dars, 1-vazifa',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: HomePage());

  }
}
