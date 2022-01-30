import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ActivityTab extends StatefulWidget {
  const ActivityTab({Key? key}) : super(key: key);

  @override
  _ActivityTabState createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeGreen,
        // flexibleSpace: Icon(CupertinoIcons.search),
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
