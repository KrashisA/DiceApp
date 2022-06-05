import 'package:flutter/material.dart';

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
                  child: Image.asset(
                    'images/dice1.png',
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Image.asset(
                    'images/dice3.png',
                  ),
                  flex: 3,
                ),
                Expanded(
                  child: Image.asset(
                    'images/dice5.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
