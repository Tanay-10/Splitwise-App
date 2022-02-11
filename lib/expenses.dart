import 'package:flutter/material.dart';

class Friends {
  String friendsId;
  String name;
  int contactNo;
  bool isSettled;

  Friends({
    required this.friendsId,
    required this.name,
    required this.contactNo,
    required this.isSettled,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> friendsListAsMap = {
      "friendsId": friendsId,
      "name": name,
      "contactNo": contactNo,
      "isSettled": isSettled == true ? 1 : 0,
    };
    return (friendsListAsMap);
  }

  static Friends fromMap(Map<String, dynamic> friendsListAsMap) {
    Friends friendsList = Friends(
      friendsId: friendsListAsMap["friendsId"],
      name: friendsListAsMap["name"],
      contactNo: friendsListAsMap["contactNo"],
      isSettled: friendsListAsMap["isSettled"] == 0 ? false : true,
    );
    return friendsList;
  }
}

class TransactionList {
  String transactionId;
  String friendsId;
  String title;
  DateTime? date;
  double amount;
  bool iAmOwed;

  TransactionList({
    required this.transactionId,
    required this.friendsId,
    required this.title,
    required this.date,
    required this.amount,
    required this.iAmOwed,
  });

  Map<String, dynamic> toMap() {
    return {
      "transactionId": transactionId,
      "friendsId": friendsId,
      "title": title,
      "date": date == null ? null : date!.millisecondsSinceEpoch,
      "amount": amount,
      "iAmOwed": iAmOwed == true ? 1 : 0,
    };
  }

  static TransactionList fromMap(Map<String, dynamic> transactionListAsMap) {
    return (TransactionList(
      transactionId: transactionListAsMap["transactionId"],
      friendsId: transactionListAsMap["friendsId"],
      title: transactionListAsMap["title"],
      date: transactionListAsMap["date"] == null
          ? null
          : DateTime.fromMicrosecondsSinceEpoch(transactionListAsMap["date"]),
      amount: transactionListAsMap["amount"],
      iAmOwed: transactionListAsMap["iAmOwed"] == 0 ? false : true,
    ));
  }
}
