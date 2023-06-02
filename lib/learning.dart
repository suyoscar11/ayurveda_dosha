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
  "Hard to fall asleep and stay asleep",
  "Goal-oriented sleep",
  "Easily fall asleep and can\n sleep for a long time",
  "Frequently and easily triggered",
  "Turns on strongly to reach \na goal and then turn off",
  "Not easily evoked",
  "Moods change quickly. Anxious, fearful, uncertain, Too many choices confuse me",
  "Strong Emotions, Ambitious and like to make plans, I get irritated when get interrupted",
  "Calm and happy and peace-loving",
  "Get angry quickly and calm down quickly",
  "Once get angry, difficult to calm down",
  "Rarely get angry",
  "Light of heart and quick to speak",
  "Strong will, passionate leader",
  "Easy Personality, loving and caring",
  "Easy to get distracted",
  "Moderate, depends upon\n how interesting is the topic",
  "Hard to get distracted",
  "I have multiple plans, I do like changes but I am also sometimes worried about my future",
  "I want to grow in my career, to have more responsibility and appreciation, I have a clear plan to have security and resources.",
  "I dislike too many changes in my life, I need more time to rest, relax and to be by myself.",
];

int questionNumber = 0;
int a = 0;
int b = 1;
int c = 2;
int integer = 1;

class _LearningState extends State<Learning> {
  void resetQuiz() {
    setState(() {
      questionNumber = 0;
      a = answers.length - answers.length;
      b = answers.length - (answers.length - 1);
      c = answers.length - (answers.length - 2);
    });
  }

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
                    answer(answerText: answers[a], ifPressed: () {}),
                    answer(answerText: answers[b], ifPressed: () {}),
                    answer(answerText: answers[c], ifPressed: () {}),
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
                              if (questionNumber >= questions.length) {
                                resetQuiz();
                              } else {
                                print("Continue");
                              }
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
  final Function ifPressed;

  answer({required this.answerText, required this.ifPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 40, right: 30),
      height: 80,
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: ifPressed(),
        child: Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            answerText,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}
