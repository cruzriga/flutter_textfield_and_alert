import 'package:flutter/material.dart';
import 'package:fluttertextfieldandalert/src/textfield.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyTextField(),
    );
  }
}