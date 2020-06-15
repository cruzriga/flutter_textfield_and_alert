import 'package:flutter/material.dart';
class BTird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
              Icons.airplanemode_active,
              size: 170.0,
              color: Colors.white),
          Text(
            'Tercera Tab',
            style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
