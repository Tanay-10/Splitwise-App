import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActivityDesc extends StatelessWidget {
  const ActivityDesc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 2,
        iconTheme: IconThemeData(
          color: CupertinoColors.activeGreen,
        ),
        actions: [
          IconButton(
            tooltip: "Add Photo",
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black87.withOpacity(0.8),
              size: 30,
            ),
          ),
          IconButton(
            tooltip: "Delete",
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(
              Icons.delete_outline_rounded,
              color: Colors.black87.withOpacity(0.8),
              size: 30,
            ),
          ),
          IconButton(
            tooltip: "Edit",
            splashRadius: 20,
            onPressed: () {},
            icon: Icon(
              Icons.edit_outlined,
              color: Colors.black87.withOpacity(0.8),
              size: 30,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 20, 10, 15),
        child: Column(
          children: [
            Container(
              height: 130,
              margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "18 Dec - 18 Jan",
                    style: TextStyle(
                      color: Colors.black54.withOpacity(0.7),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "\u{20B9}2500.00",
                    style: TextStyle(
                      color: Colors.black54.withOpacity(0.7),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: 92,
                        height: 35,
                        child: Card(
                          child: Center(
                            child: Text(
                              " ABC",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54.withOpacity(0.8),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          elevation: 4,
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                              width: 2,
                              color: CupertinoColors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 1,
                        left: -6,
                        child: CircleAvatar(
                          radius: 17,
                          // backgroundImage: AssetImage("lib/assets/arg.jpg"),
                          // backgroundColor: Colors.teal.shade500,
                          backgroundColor:
                              CupertinoColors.activeBlue.withOpacity(0.9),
                          // child: const Text(
                          //   "TA",
                          //   style: TextStyle(
                          //     fontSize: 24,
                          //     color: Colors.black87,
                          //     fontWeight: FontWeight.bold,
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Added by you on January 20, 2022",
                    style: TextStyle(
                      color: Colors.black54.withOpacity(0.7),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
