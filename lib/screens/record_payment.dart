import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecordPayment extends StatefulWidget {
  const RecordPayment({Key? key}) : super(key: key);

  @override
  _RecordPaymentState createState() => _RecordPaymentState();
}

class _RecordPaymentState extends State<RecordPayment> {
  bool _isSelected1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: CupertinoColors.activeGreen,
        ),
        titleSpacing: 0,
        title: Text(
          "Record payment",
          style: TextStyle(
            color: Colors.black87.withOpacity(0.7),
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.white70,
        actions: [
          IconButton(
            tooltip: "Save",
            color: CupertinoColors.activeGreen,
            splashRadius: 20,
            onPressed: () {
              Navigator.pop(context);
            },
            iconSize: 35,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 1 / 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    CupertinoIcons.profile_circled,
                    size: 73,
                    color: Colors.blueAccent.withOpacity(0.84),
                  ),
                  Icon(
                    Icons.double_arrow_rounded,
                    size: 40,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 30,
                    // backgroundImage: AssetImage("lib/assets/arg.jpg"),
                    backgroundColor: Colors.teal.shade500,
                    child: Text(
                      "TA",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black87.withOpacity(0.65),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                "ABC paid you",
                style: TextStyle(
                    color: Colors.black87.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                    fontSize: 16),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                "abc.123@gmail.com",
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 3 / 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          elevation: 5,
                          side: BorderSide(width: 3, color: Colors.white),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.rupeeSign,
                          color: Colors.black87.withOpacity(0.7),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 3 / 10,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 30,
                        ),
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        cursorColor: CupertinoColors.activeGreen,
                        cursorHeight: 30,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                          isDense: true,
                          hintText: " 0.00",
                          hintStyle: TextStyle(
                            fontSize: 30,
                            color: Colors.black87.withOpacity(0.7),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                              color: _isSelected1
                                  ? CupertinoColors.activeGreen
                                  : CupertinoColors.inactiveGray
                                      .withOpacity(0.4),
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                            borderSide: BorderSide(
                              color: CupertinoColors.activeGreen,
                              width: 2,
                            ),
                          ),
                        ),
                        onTap: () {
                          _isSelected1 = true;
                          setState(() {});
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
