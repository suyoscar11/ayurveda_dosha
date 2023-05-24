import 'package:flutter/material.dart';
import 'dart:convert';

class Learning extends StatefulWidget {
  const Learning({super.key});

  @override
  State<Learning> createState() => _LearningState();
}

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

                child: const Center(
                  child: Text(
                    'Lorem Ipsum dolor set amet consecturjksdk sndfnsdf jrsnjd sjnvsjd svnvsjdn s sfjsh sh uhsu hshfj suhs  s ushuf hsu u su s huu fu au',
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
                      answerText: '',
                    ),
                    answer(
                      answerText: '',
                    ),
                    answer(
                      answerText: '',
                    ),
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
      height: 100,
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
