import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'routing.dart';
import 'Groups.dart';
import 'Account.dart';
import 'Activity.dart';

enum NavTabs {
  groups,
  friends,
  activity,
  account,
}

class FriendsTab extends StatefulWidget {
  const FriendsTab({Key? key}) : super(key: key);

  @override
  _FriendsTabState createState() => _FriendsTabState();
}

class _FriendsTabState extends State<FriendsTab> {
  int _selectedIndex = 1;
  NavTabs currentTab = NavTabs.friends;

  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print(tabId[index]);
    switch (index) {
      case 0:
        Navigator.pushNamed(context, groupsTabId);
        break;
      case 2:
        Navigator.pushNamed(context, activityTabId);
        break;
      case 3:
        Navigator.pushNamed(context, accountTabId);
        break;
      default:
        Navigator.pushNamed(context, friendsTabId);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: CupertinoColors.activeBlue,
      //   title: Text("SplitWise"),
      // ),
      // body: _buildBody(),
      body: CupertinoPageScaffold(
        child: CupertinoNavigationBar(
          transitionBetweenRoutes: false,
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                mouseCursor: MouseCursor.defer,
                splashRadius: 10.0,
                icon: Icon(
                  CupertinoIcons.search,
                  size: 20,
                ),
                onPressed: () {
                  print("Search bar");
                },
              ),
              IconButton(
                splashRadius: 10.0,
                icon: Icon(
                  Icons.person_add_alt,
                  size: 20,
                ),
                onPressed: () {
                  print("Add friend");
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: IndexedStack(
        children: [
          BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            elevation: 5,
            selectedItemColor: CupertinoColors.activeGreen,
            unselectedItemColor: CupertinoColors.inactiveGray,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            selectedIconTheme: IconThemeData(
              size: 30,
            ),
            unselectedIconTheme: IconThemeData(
              size: 24,
            ),
            onTap: _selectTab,
            items: [
              BottomNavigationBarItem(
                // backgroundColor: CupertinoColors.activeBlue,
                label: "Groups",
                icon: Icon(CupertinoIcons.group_solid),
              ),
              BottomNavigationBarItem(
                // backgroundColor: CupertinoColors.activeBlue,
                label: "Friends",
                icon: Icon(CupertinoIcons.person),
              ),
              BottomNavigationBarItem(
                // backgroundColor: CupertinoColors.activeBlue,
                label: "Activty",
                icon: Icon(CupertinoIcons.book),
              ),
              BottomNavigationBarItem(
                // backgroundColor: CupertinoColors.activeBlue,
                label: "Account",
                icon: Icon(CupertinoIcons.money_dollar),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        trailing: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(CupertinoIcons.search),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.person_add),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
      child: Text(""),
    );
  }
}
