import 'dart:math';
import 'package:flutter/material.dart';

class DiceRollPage extends StatefulWidget {
  const DiceRollPage({super.key});

  @override
  State<DiceRollPage> createState() => _DiceRollPageState();
}

class _DiceRollPageState extends State<DiceRollPage> {
  int rolledNumber = 0;
  String version = 'v1';

  rolldices() {
    setState(() {
      rolledNumber = Random().nextInt(6) + 1;
    });
  }

  settings() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return ListView(
          children: [
            AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Center(child: Text('Settings')),
              content: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Version: '),
                      Text(
                        '$version',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop('dialog');
                        },
                        child: Text('Done')),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            onPressed: () {
              settings();
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'You rolled ',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      '$rolledNumber',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Image.asset('assets/images/$rolledNumber.png'),
              ),
              Container(
                width: 140,
                height: 70,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 3, color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      foregroundColor: Colors.grey),
                  child: Text(
                    'Roll',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    rolldices();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void numberText() {}
