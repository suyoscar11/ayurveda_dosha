import 'package:flutter/material.dart';
import 'dart:convert';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

List<String> questions = [
  "My reaction to the challenges",
  "My Learning Process is",
  "My Working Mechanism is",
  "My Sleep pattern is",
  "My Fight and flight response is",
  "My emotions",
  "My reaction to stress",
  "My Personality is",
  "My Concentration is",
  "My Plan for the next five years",
];

List<String> answers = [
  "Easily overstimulated",
  "Strong reaction to the challenges",
  "Methodical Thinking and action",
  "I learn quickly and forget quickly",
  "Purposeful learning",
  "Learn slowly with high level of retention",
  "Like multiple tasks at a time",
  "Selective Task at a time",
  "Need stimulation to do work",
];

int questionNumber = 0;
int a = 0;
int b = 1;
int c = 2;
int integer = 1;

class _LearningState extends State<Learning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayurveda Dosha Test'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Container(
                margin: EdgeInsets.all(10),

                color: Colors.orange,
                // where to position the child

                child: Center(
                  child: Text(
                    questions[questionNumber],
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.red,
                child: Column(
                  children: [
                    answer(
                      answerText: answers[a],
                    ),
                    answer(
                      answerText: answers[b],
                    ),
                    answer(
                      answerText: answers[c],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              questionNumber++;
                              a = a + 3;
                              b = b + 3;
                              c = c + 3;
                              // if (questionNumber >= questions.length - 1) {
                              //   print('object');
                              // }
                            });

                            // print(questionNumber);
                          },
                          child: Text('Next'),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class answer extends StatelessWidget {
  final String answerText;

  answer({required this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 40, right: 30),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
