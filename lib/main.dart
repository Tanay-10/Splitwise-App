import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(
          navTitleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
            color: CupertinoColors.activeBlue,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

List<String> navTabs = [
  "Groups",
  "Friends",
  "Activity",
  "Account",
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            // activeIcon: CupertinoNavigationBar(),
            icon: Icon(CupertinoIcons.group_solid),
            label: "Groups",
          ),
          BottomNavigationBarItem(
            // activeIcon: CupertinoButton(
            //   child: Text(""),
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       CupertinoPageRoute(
            //         builder: (context) {
            //           return FriendsScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
            icon: Icon(Icons.person),
            label: "Friends",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.speaker_notes),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.money_dollar),
            label: "Account",
          ),
        ],
      ),
      tabBuilder: (context, i) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              // navigationBar: CupertinoNavigationBar(
              //   leading: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       Text(
              //         navTabs[i],
              //         style: TextStyle(
              //             fontSize: 22, color: CupertinoColors.activeBlue),
              //       ),
              //     ],
              //   ),
              //   trailing: Row(
              //     mainAxisAlignment: MainAxisAlignment.end,
              //     children: [
              //       Icon(CupertinoIcons.search),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Icon(Icons.group_add_sharp),
              //       SizedBox(
              //         width: 20,
              //       ),
              //     ],
              //   ),
              // ),
              child: Center(
                child: Text(
                  "Hello",
                  style: CupertinoTheme.of(context).textTheme.navTitleTextStyle,
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
