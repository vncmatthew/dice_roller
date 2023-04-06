import 'package:flutter/material.dart';

class DiceRollPage extends StatefulWidget {
  const DiceRollPage({super.key});

  @override
  State<DiceRollPage> createState() => _DiceRollPageState();
}

class _DiceRollPageState extends State<DiceRollPage> {
  String? numberText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Image.asset('assets/images/question_mark.png'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/images/Roll Button.png'),
                  iconSize: 150,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void numberText() {}
