import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExpenseSplit extends StatefulWidget {
  const ExpenseSplit({Key? key}) : super(key: key);

  @override
  _ExpenseSplitState createState() => _ExpenseSplitState();
}

class _ExpenseSplitState extends State<ExpenseSplit> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: CupertinoColors.activeGreen,
        ),
        titleSpacing: 0,
        title: Text(
          "How was this expense split?",
          style: TextStyle(
            color: Colors.black87.withOpacity(0.7),
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.white70,
        actions: [
          IconButton(
            tooltip: "Save",
            splashRadius: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 35,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Checkbox(
                //   onChanged: (){},
                //   value: false,
                //   autofocus: true,
                // ),
                GestureDetector(
                  child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 7 / 10,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: _isSelected1 == false
                              ? CupertinoColors.white
                              : CupertinoColors.activeGreen,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: _isSelected1 == false ? 3 : 10,
                      child: Center(
                        child: Text(
                          "You paid, split equally",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("selected 1");
                    _isSelected1 = true;
                    _isSelected2 = false;
                    _isSelected3 = false;
                    _isSelected4 = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Checkbox(
                //   onChanged: (){},
                //   value: false,
                //   autofocus: true,
                // ),
                GestureDetector(
                  child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 7 / 10,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: _isSelected2 == false
                              ? CupertinoColors.white
                              : CupertinoColors.activeGreen,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: _isSelected2 == false ? 3 : 10,
                      child: Center(
                        child: Text(
                          "You are owed the full amount",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("selected 2");
                    _isSelected2 = true;
                    _isSelected1 = false;
                    _isSelected3 = false;
                    _isSelected4 = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Checkbox(
                //   onChanged: (){},
                //   value: false,
                //   autofocus: true,
                // ),
                GestureDetector(
                  child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 7 / 10,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: _isSelected3 == false
                              ? CupertinoColors.white
                              : CupertinoColors.activeGreen,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: _isSelected3 == false ? 3 : 10,
                      child: Center(
                        child: Text(
                          "Kunal paid, split equally",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("selected 3");
                    _isSelected3 = true;
                    _isSelected1 = false;
                    _isSelected2 = false;
                    _isSelected4 = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Checkbox(
                //   onChanged: (){},
                //   value: false,
                //   autofocus: true,
                // ),
                GestureDetector(
                  child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width * 7 / 10,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: _isSelected4 == false
                              ? CupertinoColors.white
                              : CupertinoColors.activeGreen,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      elevation: _isSelected4 == false ? 3 : 10,
                      child: Center(
                        child: Text(
                          "Kunal is owed the full amount",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    print("selected 4");
                    _isSelected4 = true;
                    _isSelected1 = false;
                    _isSelected2 = false;
                    _isSelected3 = false;
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
