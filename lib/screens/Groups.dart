import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GroupsTab extends StatefulWidget {
  const GroupsTab({Key? key}) : super(key: key);

  @override
  _GroupsTabState createState() => _GroupsTabState();
}

class _GroupsTabState extends State<GroupsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeGreen,
        flexibleSpace: Icon(CupertinoIcons.search),
      ),
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
