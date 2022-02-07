import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NewContact extends StatefulWidget {
  const NewContact({Key? key}) : super(key: key);

  @override
  _NewContactState createState() => _NewContactState();
}

class _NewContactState extends State<NewContact> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: CupertinoColors.activeGreen,
        ),
        titleSpacing: 0,
        title: Text(
          "Add a new contact",
          style: TextStyle(
            color: Colors.black54.withOpacity(0.8),
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
      body: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              child: Text(
                "Name",
                style: TextStyle(
                  color: Colors.black54.withOpacity(0.6),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextField(
              // textAlign: TextAlign.center,
              autofocus: false,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87.withOpacity(0.8),
              ),
              cursorColor: CupertinoColors.activeGreen,
              cursorHeight: 30,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  borderSide: BorderSide(
                    color: CupertinoColors.activeGreen,
                    width: 2,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  borderSide: BorderSide(
                    color: _isSelected1
                        ? CupertinoColors.activeGreen
                        : CupertinoColors.inactiveGray.withOpacity(0.4),
                    width: 2,
                  ),
                ),
                focusColor: CupertinoColors.activeGreen,
                contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                isDense: true,
                hintText: " Click to enter",
                hintStyle: TextStyle(
                  color: CupertinoColors.inactiveGray,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _isSelected1 = true;
                _isSelected2 = false;
                setState(() {});
              },
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              child: Text(
                "Phone number or email address",
                style: TextStyle(
                  color: Colors.black54.withOpacity(0.6),
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            TextField(
              // textAlign: TextAlign.center,
              autofocus: false,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87.withOpacity(0.8),
              ),
              cursorColor: CupertinoColors.activeGreen,
              cursorHeight: 30,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  borderSide: BorderSide(
                    color: CupertinoColors.activeGreen,
                    width: 2,
                  ),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                  borderSide: BorderSide(
                    color: _isSelected2
                        ? CupertinoColors.activeGreen
                        : CupertinoColors.inactiveGray.withOpacity(0.4),
                    width: 2,
                  ),
                ),
                focusColor: CupertinoColors.activeGreen,
                contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                isDense: true,
                hintText: " Click to enter",
                hintStyle: TextStyle(
                  color: CupertinoColors.inactiveGray,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                _isSelected2 = true;
                _isSelected1 = false;
                setState(() {});
              },
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              // padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              // width: MediaQuery.of(context).size.width * 2 / 3,
              child: Center(
                child: Text(
                  "Don't worry, nothing sends just yet. You will have another chance to review before sending",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54.withOpacity(0.55),
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
