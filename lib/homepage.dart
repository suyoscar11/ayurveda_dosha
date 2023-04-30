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
          Container(
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: MediaQuery.of(context).size.width,
            child: Text(
                ' Lorem ipsum Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitiamolestiae quas vel sint commodi repudiandae consequuntur voluptatum laborummquam blanditiis harum quisquam eius sed odit fugiat iusto fuga praesentiumtio, eaque rerum! Provident similique accus'),
          )
        ],
      ),
    );
  }
}
