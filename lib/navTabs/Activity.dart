import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:split_wise/navTabs/Friends.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAction(),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.white,
        titleSpacing: 24,
        title: Text(
          "Activity",
          style: TextStyle(
            color: Colors.black87.withOpacity(0.75),
            fontSize: 28,
          ),
        ),
      ),
      body: Scrollbar(
        thickness: 8,
        radius: Radius.circular(20),
        showTrackOnHover: true,
        isAlwaysShown: true,
        child: ListView(
          children: [
            ActivityCard(),
            ActivityCard(),
            ActivityCard(),
            ActivityCard(),
            ActivityCard(),
            ActivityCard(),
            ActivityCard(),
            ActivityCard(),
            ActivityCard(),
          ],
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: EdgeInsets.fromLTRB(10, 7, 10, 0),
      child: Row(
        children: [
          Icon(
            Icons.sticky_note_2_rounded,
            color: Colors.black87.withOpacity(0.6),
            size: 55,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You added "18 Dec - 18 Jan".',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.9),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "You get back \u{20B9}7,972.00",
                style: TextStyle(
                  color: CupertinoColors.activeGreen,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                "4 days ago, 7:16 PM",
                style: TextStyle(
                  color: CupertinoColors.inactiveGray,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
