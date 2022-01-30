import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/routing.dart';
import 'screens/Groups.dart';
import 'screens/Account.dart';
import 'screens/Activity.dart';
import 'screens/Friends.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FriendsTab(),
      onGenerateRoute: Router.generateRoute,
      initialRoute: friendsTabId,
    );
  }
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
      case groupsTabId:
        return MaterialPageRoute(builder: (context) => GroupsTab());
      // case '/groups' :
      //   return MaterialPageRoute(builder: (_) => GroupsTab());
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
