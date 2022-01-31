import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:app_example/floatingAction.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/routing.dart';
import 'screens/Account.dart';
import 'screens/Activity.dart';
// import 'screens/Friends.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: FriendsTab(),
      home: MyHomePage(),
      onGenerateRoute: Router.generateRoute,
      initialRoute: friendsTabId,
    );
  }
}

enum NavTabs {
  groups,
  friends,
  activity,
  account,
}

// List<String> navItems = [
//   "Groups",
//   "Friends",
//   "Activity",
//   "Account",
// ];

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case friendsTabId:
        return MaterialPageRoute(builder: (context) => FriendsTab());
      case activityTabId:
        return MaterialPageRoute(builder: (context) => ActivityTab());
      case accountTabId:
        return MaterialPageRoute(builder: (context) => AccountTab());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  NavTabs currentTab = NavTabs.friends;

  void _selectTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // print(tabId[index]);
    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FriendsTab()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => ActivityTab()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => AccountTab()));
        break;
      default:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => FriendsTab()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: CupertinoColors.activeGreen,
      // ),
      body: FriendsTab(),
      // // bottomNavigationBar: CupertinoTabScaffold(
      // //   tabBar: CupertinoTabBar(
      // //     items: const <BottomNavigationBarItem>[
      // //       BottomNavigationBarItem(
      // //         icon: Icon(CupertinoIcons.person),
      // //         label: "Friends",
      // //       ),
      // //       BottomNavigationBarItem(
      // //         icon: Icon(CupertinoIcons.book),
      // //         label: "Activity",
      // //       ),
      // //       BottomNavigationBarItem(
      // //         icon: Icon(CupertinoIcons.money_dollar),
      // //         label: "Account",
      // //       ),
      // //     ],
      // //   ),
      // //   tabBuilder: (context, index) {
      // //     switch (index) {
      // //       case 0:
      // //         return CupertinoTabView(
      // //           builder: (context) {
      // //             return CupertinoPageScaffold(
      // //               child: FriendsTab(),
      // //             );
      // //           },
      // //         );
      // //       case 1:
      // //         return CupertinoTabView(
      // //           builder: (context) {
      // //             return CupertinoPageScaffold(
      // //               child: ActivityTab(),
      // //             );
      // //           },
      // //         );
      // //       case 2:
      // //         return CupertinoTabView(
      // //           builder: (context) {
      // //             return CupertinoPageScaffold(
      // //               child: AccountTab(),
      // //             );
      // //           },
      // //         );
      // //       default:
      // //         return CupertinoTabView(
      // //           builder: (context) {
      // //             return CupertinoPageScaffold(
      // //               child: FriendsTab(),
      // //             );
      // //           },
      // //         );
      // //     }
      // //   },
      // // ),
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
              size: 35,
            ),
            unselectedIconTheme: IconThemeData(
              size: 30,
            ),
            onTap: _selectTab,
            items: const [
              BottomNavigationBarItem(
                // backgroundColor: CupertinoColors.activeBlue,
                tooltip: "Friends",
                label: "Friends",
                icon: Icon(CupertinoIcons.person),
              ),
              BottomNavigationBarItem(
                // backgroundColor: CupertinoColors.activeBlue,
                label: "Activity",
                tooltip: "Activity",
                icon: Icon(CupertinoIcons.book),
              ),
              BottomNavigationBarItem(
                // backgroundColor: CupertinoColors.activeBlue,
                label: "Account",
                tooltip: "Account",
                icon: Icon(CupertinoIcons.money_dollar),
              ),
            ],
          ),
        ],
      ),
    );
  }
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
    child: Text("Hey"),
  );
}

class FriendsTab extends StatefulWidget {
  const FriendsTab({Key? key}) : super(key: key);

  @override
  _FriendsTabState createState() => _FriendsTabState();
}

class _FriendsTabState extends State<FriendsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingAction(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
          clipBehavior: Clip.none,
          height: 90,
          child: CupertinoNavigationBar(
            transitionBetweenRoutes: false,
            padding: const EdgeInsetsDirectional.only(end: 0),
            trailing: Container(
              height: 90,
              color: CupertinoColors.activeGreen,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    mouseCursor: MouseCursor.defer,
                    splashRadius: 10.0,
                    icon: const Icon(
                      CupertinoIcons.search,
                      color: Colors.white70,
                      size: 30,
                    ),
                    onPressed: () {
                      print("Search bar");
                    },
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                    splashRadius: 10.0,
                    icon: const Icon(
                      Icons.person_add_alt,
                      size: 30,
                      color: Colors.white70,
                    ),
                    onPressed: () {
                      print("Add friend");
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Center(child: Text("Friends")),
    );
  }
}

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
        backgroundColor: CupertinoColors.activeGreen,
      ),
      body: _buildBody(),
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
      appBar: AppBar(
        backgroundColor: CupertinoColors.activeGreen,
        flexibleSpace: Icon(CupertinoIcons.search),
      ),
      body: _buildBody(),
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
          // margin: const EdgeInsets.only(bottom: 50),
          child: FloatingActionButton.extended(
            elevation: 12,
            label: Row(
              children: const [
                Icon(
                  Icons.event_note_outlined,
                  size: 22,
                ),
                SizedBox(
                  width: 7,
                ),
                Text("Add expense"),
              ],
            ),
            onPressed: () {
              print('clicked');
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => AccountTab()),
              );
            },
            backgroundColor: CupertinoColors.activeGreen,
          ),
        ),
      ],
    );
  }
}
