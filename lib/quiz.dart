import 'package:flutter/material.dart';

import './answer.dart';
import './Question.dart';
import './TryCard.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int index;
  final Function answerQuestion;
  final List cardTexts;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.index,
    @required this.cardTexts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index]['questionText'],
        ),
        ...(questions[index]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
        SizedBox(
          height: 100,
          width: double.infinity,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            children: <Widget>[
              for (int j = 0; j < cardTexts.length; j++) new TryCard(cardTexts[j]) 
            ],
          ),
        ),
      ],
    );
  }
}
