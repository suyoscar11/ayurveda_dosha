import 'package:ayurveda_dosha/question_models/question_models.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Quiz> quizList = [];

  @override
  void initState() {
    super.initState();
    loadQuizdata();
  }

  void loadQuizdata() async {}

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
                  children: const [
                    answer(),
                    answer(),
                    answer(),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class answer extends StatelessWidget {
  const answer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 40, right: 30),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.yellow, borderRadius: BorderRadius.circular(20)),
      child: const Center(
          child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'LoremI psnsdjdfbsidfjasd sjkbfjksdbj sb sjdvbvjsdf  s husfbjsd sjh s h jfisif a fsa  has fsh h',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      )),
    );
  }
}
