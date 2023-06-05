import 'package:flutter/material.dart';

class ElevatedButtonLearns extends StatefulWidget {
  const ElevatedButtonLearns({super.key});

  @override
  State<ElevatedButtonLearns> createState() => _ElevatedButtonLearnsState();
}

class _ElevatedButtonLearnsState extends State<ElevatedButtonLearns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Elevated Button Learning'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: Text('Click Me!'),
        style: ElevatedButton.styleFrom(backgroundColor: Colors.cyan),
      )),
    );
  }
}

MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
  final getColo = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return colorPressed;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColo);
}
