import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../routing.dart' as routing;
import 'Account.dart';
import 'Activity.dart';

class FriendsTab extends StatefulWidget {
  const FriendsTab({Key? key}) : super(key: key);

  @override
  _FriendsTabState createState() => _FriendsTabState();
}

class _FriendsTabState extends State<FriendsTab> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  // NavTabs currentTab = NavTabs.friends;

  void selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1000),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white70,
      //   elevation: 2,
      //   actions: [
      //     IconButton(
      //       splashRadius: 22,
      //       splashColor: CupertinoColors.systemGrey,
      //       color: Colors.black54,
      //       iconSize: 30,
      //       onPressed: () {},
      //       icon: Icon(Icons.search),
      //     ),
      //     IconButton(
      //       splashRadius: 22,
      //       splashColor: CupertinoColors.systemGrey,
      //       color: Colors.black54,
      //       iconSize: 30,
      //       onPressed: () {},
      //       icon: Icon(Icons.person_add_alt),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     )
      //   ],
      // ),
      body: PageView(
        controller: pageController,
        children: [
          Scaffold(
            floatingActionButton: FloatingAction(),
            appBar: AppBar(
              backgroundColor: Colors.white70,
              elevation: 2,
              actions: [
                IconButton(
                  splashRadius: 22,
                  splashColor: CupertinoColors.systemGrey,
                  color: Colors.black54,
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  splashRadius: 22,
                  splashColor: CupertinoColors.systemGrey,
                  color: Colors.black54,
                  iconSize: 30,
                  onPressed: () {},
                  icon: Icon(Icons.person_add_alt),
                ),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            body: Column(
              children: [
                Container(
                  child: Text(
                    "Overall, you are owed  Rs.",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(10, 15, 0, 8),
                ),
              ],
            ),
          ),
          Scaffold(
            floatingActionButton: FloatingAction(),
          ),
          Scaffold(
            appBar: AppBar(
              elevation: 0.1,
              backgroundColor: Colors.white70,
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
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // items: CupertinoTabBar(
        currentIndex: _selectedIndex,
        elevation: 5,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: CupertinoColors.activeGreen,
        unselectedItemColor: CupertinoColors.inactiveGray,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme: const IconThemeData(
          size: 33,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 28,
        ),
        onTap: selectTab,
        items: /*const <BottomNavigationBarItem>*/ [
          BottomNavigationBarItem(
            activeIcon: Container(
              // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              width: 120,
              // color: Colors.grey.shade300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(CupertinoIcons.person),
                    Text(
                      "Friends",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            icon: Icon(CupertinoIcons.person),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              width: 120,
              // color: Colors.grey.shade300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(CupertinoIcons.book),
                    Text(
                      "Activity",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            icon: Icon(CupertinoIcons.book),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              width: 120,
              // color: Colors.grey.shade300,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.white70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(CupertinoIcons.money_dollar),
                    Text(
                      "Account",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            icon: Icon(CupertinoIcons.money_dollar),
            label: "Account",
          ),
        ],
      ),
    );
  }
}

//
// class FriendsTab extends StatefulWidget {
//   const FriendsTab({Key? key}) : super(key: key);
//
//   @override
//   _FriendsTabState createState() => _FriendsTabState();
// }
//
// class _FriendsTabState extends State<FriendsTab> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingAction(),
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(70),
//         child: Container(
//           padding: EdgeInsets.only(top: 20),
//           // height: 80,
//           child: AppBar(
//             backgroundColor: Colors.white70,
//             elevation: 2,
//             actions: [
//               IconButton(
//                 splashRadius: 22,
//                 splashColor: CupertinoColors.systemGrey,
//                 color: Colors.black54,
//                 iconSize: 30,
//                 onPressed: () {},
//                 icon: Icon(Icons.search),
//               ),
//               IconButton(
//                 splashRadius: 22,
//                 splashColor: CupertinoColors.systemGrey,
//                 color: Colors.black54,
//                 iconSize: 30,
//                 onPressed: () {},
//                 icon: Icon(Icons.person_add_alt),
//               ),
//               SizedBox(
//                 width: 10,
//               )
//             ],
//           ),
//         ),
//       ),
//       body: Center(child: Text("Friends")),
//     );
//   }
// }

class ActivityTab extends StatefulWidget {
  const ActivityTab({Key? key}) : super(key: key);

  @override
  _ActivityTabState createState() => _ActivityTabState();
}

class _ActivityTabState extends State<ActivityTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAction(),
      appBar: AppBar(
        backwardsCompatibility: true,
        backgroundColor: CupertinoColors.activeGreen,
      ),
      // body: _buildBody(),
    );
  }
}

class AccountTab extends StatefulWidget {
  const AccountTab({Key? key}) : super(key: key);

  @override
  _AccountTabState createState() => _AccountTabState();
}

class _AccountTabState extends State<AccountTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      // body: _buildBody(),
    );
  }
}

class FloatingAction extends StatelessWidget {
  const FloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          // margin: const EdgeInsets.only(bottom: 40),
          child: FloatingActionButton.extended(
            elevation: 20,
            label: Row(
              children: const [
                Icon(
                  Icons.event_note_outlined,
                  size: 22,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Add Expense",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.8,
                  ),
                ),
              ],
            ),
            onPressed: () {
              print('clicked');
              Navigator.pushNamed(context, routing.expenseScreenId);
            },
            backgroundColor: CupertinoColors.activeGreen,
          ),
        ),
      ],
    );
  }
}
