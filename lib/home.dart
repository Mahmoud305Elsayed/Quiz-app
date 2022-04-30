import 'package:exam_app/Exam.dart';
import 'package:exam_app/quizView.dart';
import 'package:flutter/cupertino.dart';
import 'Exam.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  Quiz quiz = Quiz();
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView.builder(
          itemBuilder: (context, index) => QuizView(index),
          itemCount: quiz.question.length,
        )),
      ],
    );
  }
}
