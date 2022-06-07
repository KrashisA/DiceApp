import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Left Dice Tapped');
                      print(Random().nextInt(6) + 1);
                    },
                    child: Image.asset(
                      'images/dice1.png',
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
                      print('Right Dice Tapped');
                    },
                    child: Image.asset(
                      'images/dice3.png',
                    ),
                  ),
                  flex: 2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
