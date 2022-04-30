import 'package:exam_app/Exam.dart';
import 'package:exam_app/home.dart';
import 'package:exam_app/quizView.dart';
import 'package:flutter/material.dart';

void main() {
  for (int i = 0; i < Quiz().question.length; i++) {
    for (int j = 0; j < Quiz().Answer.length; j++) {}
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Quiz quiz = Quiz();
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(appBar: AppBar(), body: Home()));
  }
}
