import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Accounts extends StatelessWidget {
  const Accounts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        titleSpacing: 24,
        title: Text(
          "Account",
          style: TextStyle(
            color: Colors.black87.withOpacity(0.75),
            fontSize: 28,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Scrollbar(
          thickness: 8,
          radius: Radius.circular(20),
          showTrackOnHover: true,
          isAlwaysShown: true,
          child: ListView(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.7,
                      color: Colors.grey,
                    ),
                    top: BorderSide(
                      width: 0.7,
                      color: Colors.grey,
                    ),
                  ),
                ),
                height: 100,
                // padding: EdgeInsets.fromLTRB(7, 10, 7, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      // backgroundImage: AssetImage("lib/assets/arg.jpg"),
                      backgroundColor: Colors.teal.shade500,
                      child: const Text(
                        "TA",
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanay Agarwal",
                          style: TextStyle(
                            color: CupertinoColors.black.withOpacity(0.7),
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.5,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "getnada1234@zero.com",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    IconButton(
                      highlightColor: Colors.grey.withOpacity(0.7),
                      iconSize: 28,
                      splashRadius: 22,
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit_outlined,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.qr_code_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Scan code",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          CupertinoIcons.suit_diamond,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Splitwise Pro",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Preferences",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          CupertinoIcons.envelope_fill,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Email Settings",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          CupertinoIcons.bell_solid,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Device and push notification settings",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.lock_outline_rounded,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Passcode",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Feedback",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          Icons.star_purple500_sharp,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Rate Splitwise",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: const <Widget>[
                        Icon(
                          CupertinoIcons.question_square,
                          size: 30,
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Contact Splitwise support",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 13),
                height: 86,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.7,
                      color: Colors.grey,
                    ),
                    top: BorderSide(
                      width: 0.7,
                      color: Colors.grey,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 30,
                      color: CupertinoColors.activeGreen,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Log out",
                      style: TextStyle(
                        color: CupertinoColors.activeGreen,
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
