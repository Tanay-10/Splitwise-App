import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AccountTab extends StatefulWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
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
