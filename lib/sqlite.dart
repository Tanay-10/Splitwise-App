import 'dart:async';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';
import 'expenses.dart';

const String friendsTable = "FRIENDS";
const String transactionTable = "TRANSACTION";

class SqliteDb {
  SqliteDb.internal();
  static Database? _db;
  static Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initializeDb();
    return _db!;
  }

  static Future _onConfigure(Database db) async {
    await db.execute("PRAGMA foreign_keys = ON");
  }

  static Future _onCreate(Database db, int t) async {
    await db.execute(
        'CREATE TABLE FRIENDS (friendsId INTEGER PRIMARY KEY AUTOINCREMENT, '
        'name TEXT, '
        'contactNo INTEGER,'
        'isSettled INTEGER)');

    await db.execute(
        'CREATE TABLE TRANSACTIONS (transactionId INTEGER PRIMARY KEY AUTOINCREMENT,'
        'friendsId INTEGER,'
        'title TEXT,'
        'date INTEGER,'
        'amount REAL,'
        'iAmOwed INTEGER,'
        'FOREIGN KEY (friendsId) REFERENCES FRIENDS (friendsId) ON DELETE NO ACTION ON UPDATE NO ACTION )');

    await db.insert(friendsTable, {
      "friendsId": defaultFriendId,
      "name": defaultName,
      "contactNo": defaultContactNo,
      "isSettled": defaultValue,
    });
  }

  static initializeDb() async {
    try {
      String folderPath = await getDatabasesPath();
      String path = p.join(folderPath, "splitwise.db");

      /// for deleting database
      // await deleteDatabase(path);
      var splitDb = await openDatabase(
        path,
        version: 2,
        onConfigure: _onConfigure,
        onCreate: _onCreate,
      );

      _db = splitDb;
      return splitDb;
    } catch (ex) {
      print(ex);
    }
  }

  /// insert friend data into DB
  static Future<int?> insertFriend(Map<String, dynamic> friendData) async {
    var dbClient = await db;
    int id = await dbClient.insert(friendsTable, friendData);
    if (id != 0) {
      print("data saved");
      return (id);
    } else {
      return (null);
    }
  }

  /// update changes into DB
  static Future<bool> updateFriend(Friends friends) async {
    var dbClient = await db;
    int changes = await dbClient.update(
      friendsTable,
      friends.toMap(),
      where: "friendsId = ?",
      whereArgs: [friends.friendsId],
    );
    print(changes);
    return (changes > 0);
  }

  /// delete from DB
  static Future<bool> deleteFriend(Friends friends) async {
    var dbClient = await db;
    int changes = await dbClient.delete(
      friendsTable,
      where: "friendsId = ?",
      whereArgs: [friends.friendsId],
    );
    return (changes == 1);
  }
}
