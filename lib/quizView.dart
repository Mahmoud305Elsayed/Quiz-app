import 'package:exam_app/Exam.dart';
import 'package:flutter/material.dart';

class QuizView extends StatefulWidget {
  int index;
  QuizView(this.index);
  @override
  _QuizViewState createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  Quiz quiz = Quiz();
  int val = 55;
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          quiz.question[widget.index],
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (content, i) => (RadioListTile(
            title: Text(quiz.Answer[widget.index][i]),
            value: i,
            groupValue: val,
            onChanged: (choice) {
              setState(() {
                val = i;
              });
            },
          )),
        ),
      ],
    );
  }
}
