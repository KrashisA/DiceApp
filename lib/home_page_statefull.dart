import 'package:flutter/material.dart';
import 'dart:math';

int _leftdice = 1;
int _rightdice = 3;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade400,
      appBar: AppBar(
        title: Text('Dice'),
        backgroundColor: Colors.red.shade500,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _leftdice = Random().nextInt(6) + 1;
                        });
                        print('Left Dice Tapped');
                        print(_leftdice);
                      },
                      child: Image.asset(
                        'images/dice$_leftdice.png',
                      ),
                    ),
                    flex: 2,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _rightdice = Random().nextInt(6) + 1;
                        });
                        print('Right Dice Tapped');
                        print(_rightdice);
                      },
                      child: Image.asset(
                        'images/dice$_rightdice.png',
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
