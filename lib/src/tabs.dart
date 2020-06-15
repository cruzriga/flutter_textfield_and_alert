import 'package:flutter/material.dart';
import 'package:fluttertextfieldandalert/src/screens/home.dart';
import 'package:fluttertextfieldandalert/src/screens/video.dart';
import 'package:fluttertextfieldandalert/src/screens/contacts.dart';


class MyTabs extends StatefulWidget {
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text('Video Tabs'),
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.ondemand_video)),
              Tab(icon: Icon(Icons.contacts)),
            ]),
          ),
        body: TabBarView(
          children: <Widget>[
            Home(),
            Video(),
            Contacts()
          ],
        ),
      ),
    );
  }
}
