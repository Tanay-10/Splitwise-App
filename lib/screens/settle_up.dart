import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:split_wise/navTabs/Friends.dart';
import 'package:split_wise/routing.dart' as routing;
import 'package:split_wise/expenses.dart';
import 'package:split_wise/shared_data.dart';

class SettleUp extends StatefulWidget {
  SettleUp({Key? key, this.friends}) : super(key: key);

  final Friends? friends;

  @override
  _SettleUpState createState() => _SettleUpState();
}

class _SettleUpState extends State<SettleUp> {
  Friends friends = Friends(
    friendsId: defaultFriendId,
    name: "",
    contactNo: defaultContactNo,
    isSettled: false,
  );

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    friends = widget.friends ?? friends;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAction(),
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeGreen.withOpacity(0.9),
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 17, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 2 / 3,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Icon(
                    CupertinoIcons.profile_circled,
                    size: 55,
                    color: Colors.black87.withOpacity(0.7),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ABC",
                        style: TextStyle(
                          fontSize: 23,
                          color: Colors.black87.withOpacity(0.9),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Owes you ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54.withOpacity(0.7),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            "\u{20B9}1000.00",
                            style: TextStyle(
                              fontSize: 17,
                              color:
                                  CupertinoColors.activeBlue.withOpacity(0.8),
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: CupertinoColors.activeBlue.withOpacity(0.74),
                    elevation: 7,
                    // side: BorderSide(width: 3, color: Colors.white),
                    minimumSize: Size(55, 40),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, routing.recordPaymentId);
                  },
                  child: Text(
                    "Settle up",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 7,
                    minimumSize: Size(55, 40),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Remind...",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black87.withOpacity(0.8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 27,
            ),
            Container(
              // padding: EdgeInsets.only(left: 10),
              child: Text(
                "October 2021",
                style: TextStyle(
                  color: Colors.black87.withOpacity(0.7),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Oct",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "27",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.medical_services_rounded,
                  size: 40,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Medicine",
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.7),
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "You paid \u{20B9}2000.00",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "You lent",
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "\u{20B9}2000.00",
                      style: TextStyle(
                        color: CupertinoColors.activeBlue,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              // padding: EdgeInsets.only(left: 10),
              child: Text(
                "August 2021",
                style: TextStyle(
                  color: Colors.black87.withOpacity(0.7),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Aug",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "12",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.sticky_note_2_rounded,
                  color: Colors.black87.withOpacity(0.6),
                  size: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Paid by cash",
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.7),
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "ABC paid \u{20B9}1000.00",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "You borrowed",
                      style: TextStyle(
                        color: CupertinoColors.activeGreen,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "\u{20B9}1000.00",
                      style: TextStyle(
                        color: CupertinoColors.activeGreen,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                children: [
                  Text(
                    "All expenses before this date have been settled up.",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Tap to show settled expenses",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
