import 'package:flutter/material.dart';
import 'welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login/Register ',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: WelcomeScreen(),
    );
  }
}
