import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:split_wise/sqlite.dart';
import 'expenses.dart';

class AccountData extends ChangeNotifier {
  bool isDataLoaded = false;
  List<Friends> activeAccounts = [];
  List<Friends> friendsList = [];

  int? findFriendIndex(Friends friends) {
    var index = activeAccounts.indexWhere((Friends f) {
      return f.friendsId == friends.friendsId;
    });
    if (index == -1) {
      return null;
    }
    return index;
  }

  void addFriend(Friends friends) async {
    var friendAsMap = friends.toMap();
    friendAsMap.remove("friendsId");
    int? id = await SqliteDb.insertFriend(friendAsMap);
    if (id == null) {
      print("could not insert");
    } else {
      friends.friendsId = id;
      friendsList.add(friends);
      notifyListeners();
    }
  }

  void updateFriend(Friends friends) async {
    bool success = await SqliteDb.updateFriend(friends);
    if (success == false) {
      print("could not update");
    }
    {
      var index = findFriendIndex(friends);
      if (index != null) {
        activeAccounts[index] = friends;
      } else {
        print("Friend not found");
      }
    }
    notifyListeners();
  }

  void deleteFriend(Friends friends) async {
    bool success = await SqliteDb.deleteFriend(friends);
    if (success == false) {
      print("could not delete friend");
    } else {
      var index = findFriendIndex(friends);
      if (index != null) {
        activeAccounts.removeAt(index);
        notifyListeners();
      } else {
        print("friend not found");
      }
    }
  }

  void settleFriend(Friends friends) async {
    friends.isSettled = true;
    SqliteDb.updateFriend(friends);
    var index = findFriendIndex(friends);
    if (index == null) {
      print("Task not found");
    } else {
      activeAccounts.removeAt(index);
      notifyListeners();
    }
  }
}

class TransactionData extends ChangeNotifier {
  List<Transactions> transactionList = [];

  int? findTransactionIndex(Transactions transactions) {
    var index = transactionList.indexWhere((Transactions t) {
      return t.transactionId == transactions.transactionId;
    });
    if (index == -1) {
      return null;
    }
    return index;
  }
}
