import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(
          "Add expense",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.white70,
        actions: [
          IconButton(
            color: CupertinoColors.activeGreen,
            splashRadius: 20,
            onPressed: () {},
            iconSize: 35,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Container(
              height: 50,
              width: double.maxFinite,
              child: Row(
                children: [
                  Text(
                    "With you and: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
