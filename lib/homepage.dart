import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
                  children: [],
                ),
              )),
        ],
      ),
    );
  }
}
