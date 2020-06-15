import 'package:flutter/material.dart';
class BFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
              Icons.alarm,
              size: 170.0,
              color: Colors.white),
          Text(
            'Primer Tab',
            style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
