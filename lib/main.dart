import 'package:flutter/material.dart';
// import 'home_page.dart';
import 'home_page_statefull.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
  final _leftdice = 0;
  final _rightdice = 0;
  var rng = Random();
  for (var i = 0; i < 10; i++) {
    print(rng.nextInt(6));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
