import 'package:flutter/material.dart';
class Bsecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
              Icons.access_time,
              size: 170.0,
              color: Colors.white),
          Text(
            'Segunda Tab',
            style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
