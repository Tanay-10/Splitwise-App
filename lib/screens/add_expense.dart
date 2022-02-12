import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:split_wise/expenses.dart';
import 'package:split_wise/routing.dart' as routing;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:split_wise/shared_data.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  _AddExpenseState createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController amountController = TextEditingController();

  Friends friends = Friends(
    friendsId: defaultFriendId,
    name: "",
    contactNo: null,
    isSettled: false,
  );

  TransactionList transaction = TransactionList(
    transactionId: defaultTransactionId,
    friendsId: defaultFriendId,
    title: "",
    date: null,
    amount: defaultAmount,
    iAmOwed: false,
  );

  void saveNewFriend() async {
    Provider.of<ExpenseData>(context, listen: false).addFriend(friends);
    Navigator.pop(context);
  }

  void updateNewFriend() async {
    Provider.of<ExpenseData>(context, listen: false).updateFriend(friends);
    Navigator.pop(context);
  }

  void deleteNewFriend() async {
    Provider.of<ExpenseData>(context, listen: false).deleteFriend(friends);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: CupertinoColors.activeGreen,
        ),
        titleSpacing: 0,
        title: Text(
          "Add expense",
          style: TextStyle(
            color: Colors.black87.withOpacity(0.7),
            fontSize: 22,
          ),
        ),
        backgroundColor: Colors.white70,
        actions: [
          IconButton(
            tooltip: "Save",
            color: CupertinoColors.activeGreen,
            splashRadius: 20,
            onPressed: () {
              saveNewFriend();
              // Navigator.pop(context);
            },
            iconSize: 35,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: Colors.white70,
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Container(
              decoration: BoxDecoration(border: Border()),
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              height: 60,
              width: double.maxFinite,
              child: Row(
                children: [
                  Text(
                    "With you and: ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 1 / 4,
                    height: 45,
                    child: Card(
                      child: Center(
                        child: TextField(
                          textAlign: TextAlign.center,
                          autofocus: false,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                          ),
                          controller: nameController,
                          onChanged: (String? value) {
                            friends.name = value == null ? friends.name : value;
                          },
                          cursorColor: CupertinoColors.activeGreen,
                          cursorHeight: 30,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                color: CupertinoColors.activeGreen,
                                width: 2,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              borderSide: BorderSide(
                                color: CupertinoColors.activeGreen,
                                width: 2,
                              ),
                            ),
                            focusColor: CupertinoColors.activeGreen,
                            contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                            isDense: true,
                            hintText: "Name",
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black87.withOpacity(0.7),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      elevation: 4,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          width: 2,
                          color: CupertinoColors.activeGreen,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    clipBehavior: Clip.none,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 5,
                      side: BorderSide(width: 3, color: Colors.white),
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.clipboardList,
                      color: Colors.black87.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 2 / 4,
                  child: TextField(
                    textAlign: TextAlign.center,
                    autofocus: false,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                    controller: titleController,
                    onChanged: (String? value) {
                      transaction.title =
                          value == null ? transaction.title : value;
                    },
                    cursorColor: CupertinoColors.activeGreen,
                    cursorHeight: 30,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: CupertinoColors.activeGreen,
                          width: 2,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: _isSelected1
                              ? CupertinoColors.activeGreen
                              : CupertinoColors.inactiveGray.withOpacity(0.4),
                          width: 2,
                        ),
                      ),
                      focusColor: CupertinoColors.activeGreen,
                      contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      isDense: true,
                      hintText: " Enter a subject",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black87.withOpacity(0.7),
                      ),
                    ),
                    onTap: () {
                      _isSelected1 = true;
                      _isSelected2 = false;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 3 / 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      elevation: 5,
                      side: BorderSide(width: 3, color: Colors.white),
                    ),
                    child: FaIcon(
                      FontAwesomeIcons.rupeeSign,
                      color: Colors.black87.withOpacity(0.7),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 2 / 4,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    cursorColor: CupertinoColors.activeGreen,
                    cursorHeight: 30,
                    controller: amountController,
                    onChanged: (String? value) {
                      transaction.amount = value == null
                          ? transaction.amount
                          : double.parse(value);
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                      isDense: true,
                      hintText: " 0.00",
                      hintStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.black87.withOpacity(0.7),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: _isSelected2
                              ? CupertinoColors.activeGreen
                              : CupertinoColors.inactiveGray.withOpacity(0.4),
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                        borderSide: BorderSide(
                          color: CupertinoColors.activeGreen,
                          width: 2,
                        ),
                      ),
                    ),
                    onTap: () {
                      _isSelected2 = true;
                      _isSelected1 = false;
                      setState(() {});
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            width: MediaQuery.of(context).size.width * 1 / 3,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                elevation: 10,
              ),
              child: Text(
                "You paid",
                style: TextStyle(
                  color: Colors.black54.withOpacity(0.7),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                print("Payment");
                Navigator.pushNamed(context, routing.expenseSplitId);
              },
            ),
          )
        ],
      ),
    );
  }
}
