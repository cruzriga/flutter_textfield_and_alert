import 'package:flutter/material.dart';
import 'package:fluttertextfieldandalert/src/screens/bfirst.dart';
import 'package:fluttertextfieldandalert/src/screens/bsecond.dart';
import 'package:fluttertextfieldandalert/src/screens/btrird.dart';
class TabsTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:3,
      child: Scaffold(
          backgroundColor: Colors.red,
        appBar : AppBar(
          title: Text('Demo bottom navigation bar'),
          backgroundColor: Colors.blue,
        ),
        body: TabBarView(
          children: <Widget>[
            BFirst(),
            Bsecond(),
            BTird()
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
              child: TabBar(tabs: <Widget>[
                Tab(icon: Icon(Icons.alarm)),
                Tab(icon: Icon(Icons.access_time)),
                Tab(icon: Icon(Icons.airplanemode_active)),
              ]),
            )
      )
    );
  }
}
