import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:split_wise/shared_data.dart';
import 'package:split_wise/expenses.dart';
import '../routing.dart' as routing;
import 'Account.dart';
import 'Activity.dart';
import 'package:split_wise/screens/settle_up.dart';

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
    return Consumer2<AccountData, TransactionData>(
        builder: (context, accountData, transactionData, x) {
      return Scaffold(
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
                    icon: Icon(Icons.person_add_alt),
                    onPressed: () {
                      Navigator.pushNamed(context, routing.newContactId);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              ),
              // body: ListView(
              //   // crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Container(
              //       child: Text(
              //         "Overall, you are owed  Rs.",
              //         style: TextStyle(
              //           color: Colors.black87,
              //           fontSize: 17,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //       padding: EdgeInsets.fromLTRB(10, 15, 0, 8),
              //     ),
              //     ExpenseTrack(
              //       friendName: "ABC",
              //       amount: 1000,
              //       paidBy: "They paid",
              //     ),
              //     ExpenseTrack(
              //       friendName: "DEF",
              //       amount: 1000,
              //       paidBy: "I paid",
              //     ),
              //     ExpenseTrack(
              //       friendName: "ABC",
              //       amount: 1000,
              //       paidBy: "I paid",
              //     ),
              //     ExpenseTrack(
              //       friendName: "DEF",
              //       amount: 1000,
              //       paidBy: "They paid",
              //     ),
              //     ExpenseTrack(
              //       friendName: "ABC",
              //       amount: 1000,
              //       paidBy: "They paid",
              //     ),
              //     ExpenseTrack(
              //       friendName: "ABC",
              //       amount: 1000,
              //       paidBy: "They paid",
              //     ),
              //     ExpenseTrack(
              //       friendName: "ABC",
              //       amount: 1000,
              //       paidBy: "They paid",
              //     ),
              //   ],
              // ),
              body: Builder(builder: (BuildContext newContext) {
                if (accountData.isDataLoaded) {
                  var data = accountData.activeAccounts;
                  var t_data = transactionData.transactionList;
                  List<Widget> children = [];
                  for (var account in data) {
                    for (var payment in t_data) {
                      children.add(ExpenseTrack(
                          friendName: account.name,
                          amount: payment.amount,
                          paidBy: "I paid"));
                    }
                  }
                  return ListView(
                    children: children,
                    padding: const EdgeInsets.all(5),
                  );
                } else {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: CupertinoColors.activeGreen,
                    ),
                  );
                }
              }),
            ),
            Activity(),
            Accounts(),
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
              activeIcon: NavBarItem(
                itemText: "Friends",
                activeIcon: CupertinoIcons.person,
              ),
              icon: Icon(CupertinoIcons.person),
              label: "Friends",
            ),
            BottomNavigationBarItem(
              activeIcon: NavBarItem(
                itemText: "Activity",
                activeIcon: CupertinoIcons.book,
              ),
              icon: Icon(CupertinoIcons.book),
              label: "Activity",
            ),
            BottomNavigationBarItem(
              activeIcon: NavBarItem(
                itemText: "Activity",
                activeIcon: CupertinoIcons.money_dollar,
              ),
              icon: Icon(CupertinoIcons.money_dollar),
              label: "Account",
            ),
          ],
        ),
      );
    });
  }
}

class NavBarItem extends StatelessWidget {
  final String itemText;
  final IconData activeIcon;

  const NavBarItem({
    required this.itemText,
    required this.activeIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      width: 120,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 2,
            color: CupertinoColors.activeGreen,
          ),
          borderRadius: BorderRadius.circular(7),
        ),
        // color: Colors.lightBlue.withOpacity(0.1),
        child: Container(
          padding: EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Icon(activeIcon),
              Text(
                itemText,
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
    );
  }
}

class ExpenseTrack extends StatelessWidget {
  final String friendName;
  final double amount;
  final String paidBy;

  const ExpenseTrack({
    required this.friendName,
    required this.amount,
    required this.paidBy,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 70,
        padding: EdgeInsets.fromLTRB(15, 5, 15, 0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              friendName,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
              ),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  paidBy == "They paid" ? "You owe" : "owes you",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: CupertinoColors.activeBlue.withOpacity(0.7),
                  ),
                ),
                Text(
                  "\u{20B9}$amount",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: CupertinoColors.activeBlue.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, routing.settleUpId);
      },
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
              Navigator.pushNamed(context, routing.addExpenseScreenId);
            },
            backgroundColor: CupertinoColors.activeGreen,
          ),
        ),
      ],
    );
  }
}
