import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:app_example/floatingAction.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:split_wise/screens/settle_up.dart';
import 'package:split_wise/screens/split.dart';
import 'routing.dart' as routing;
import 'navTabs/Friends.dart';
import 'navTabs/Account.dart';
import 'navTabs/Activity.dart';
import 'screens/expense.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: const FriendsTab(),
      routes: {
        routing.expenseScreenId: (context) => AddExpense(),
        routing.expenseSplitId: (context) => ExpenseSplit(),
        routing.settleUpId: (context) => SettleUp(),
      },
      // home: MyHomePage(),
      // onGenerateRoute: Router.generateRoute,
      // initialRoute: friendsTabId,
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

// class Router {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     switch (settings.name) {
//       case friendsTabId:
//         return MaterialPageRoute(builder: (context) => FriendsTab());
//       case activityTabId:
//         return MaterialPageRoute(builder: (context) => ActivityTab());
//       case accountTabId:
//         return MaterialPageRoute(builder: (context) => AccountTab());
//       default:
//         return MaterialPageRoute(
//           builder: (context) => Scaffold(
//             body: Center(
//               child: Text('No route defined for ${settings.name}'),
//             ),
//           ),
//         );
//     }
//   }
// }
