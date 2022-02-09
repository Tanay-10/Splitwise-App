import 'package:flutter/material.dart';

class FriendsList {
  int friendsId;
  String name;
  var contactNo;

  FriendsList({
    required this.friendsId,
    required this.name,
    required this.contactNo,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> friendsListAsMap = {
      "friendsId": friendsId,
      "name": name,
      "contactNo": contactNo,
    };
    return (friendsListAsMap);
  }

  static FriendsList fromMap(Map<String, dynamic> friendsListAsMap) {
    FriendsList friendsList = FriendsList(
      friendsId: friendsListAsMap["friendsId"],
      name: friendsListAsMap["name"],
      contactNo: friendsListAsMap["contactNo"],
    );
    return friendsList;
  }
}

class TransactionList {
  int transactionId;
  int friendsId;
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
      "iAmOwed": iAmOwed,
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
      iAmOwed: transactionListAsMap["iAmOwed"],
    ));
  }
}
