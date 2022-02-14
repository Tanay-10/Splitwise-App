import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:split_wise/expenses.dart';
import 'package:split_wise/screens/activity_desc.dart';
import 'package:split_wise/screens/new_contact.dart';
import 'package:split_wise/screens/record_payment.dart';
import 'package:split_wise/screens/settle_up.dart';
import 'package:split_wise/screens/split.dart';
import 'routing.dart' as routing;
import 'navTabs/Friends.dart';
import 'navTabs/Account.dart';
import 'navTabs/Activity.dart';
import 'screens/add_expense.dart';
import 'shared_data.dart';
import 'package:split_wise/sqlite.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SqliteDb.initializeDb();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AccountData()),
        ChangeNotifierProvider(create: (context) => TransactionData()),
      ],
      child: MaterialApp(
        theme: ThemeData.light(),
        initialRoute: routing.friendsTabId,
        /*routes: {
          routing.addExpenseScreenId: (context) => AddExpense(),
          routing.expenseSplitId: (context) => ExpenseSplit(),
          routing.settleUpId: (context) => SettleUp(),
          routing.recordPaymentId: (context) => RecordPayment(),
          routing.activityDescId: (context) => ActivityDesc(),
          routing.newContactId: (context) => NewContact(),
        },*/
        onGenerateRoute: (settings) {
          var pageName = settings.name;
          var args = settings.arguments;
          if (pageName == routing.friendsTabId) {
            return MaterialPageRoute(builder: (context) => FriendsTab());
          }
          if (pageName == routing.activityTabId) {
            return MaterialPageRoute(builder: (context) => Activity());
          }
          if (pageName == routing.accountTabId) {
            return MaterialPageRoute(builder: (context) => Accounts());
          }
          if (pageName == routing.addExpenseScreenId) {
            return MaterialPageRoute(builder: (context) => AddExpense());
          }
          if (pageName == routing.expenseSplitId) {
            return MaterialPageRoute(builder: (context) => ExpenseSplit());
          }
          if (pageName == routing.settleUpId) {
            if (args is Friends) {
              return MaterialPageRoute(
                builder: (context) => SettleUp(
                  friends: args,
                ),
              );
            }
          }
          if (pageName == routing.recordPaymentId) {
            return MaterialPageRoute(builder: (context) => RecordPayment());
          }
          if (pageName == routing.activityDescId) {
            return MaterialPageRoute(builder: (context) => ActivityDesc());
          }
          if (pageName == routing.newContactId) {
            return MaterialPageRoute(builder: (context) => NewContact());
          }
        },
      ),
    );
  }
}
