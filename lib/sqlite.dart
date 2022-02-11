import 'package:path/path.dart';
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
    await db.execute('CREATE TABLE $friendsTable(friendsId INTEGER PRIMARY KEY,'
        'name TEXT,'
        'contactNo INTEGER'
        'isSettled INTEGER)');

    await db.execute(
        'CREATE TABLE $transactionTable(transactionId INTEGER PRIMARY KEY,'
        'friendsId INTEGER,'
        'title TEXT,'
        'date INTEGER,'
        'amount DOUBLE,'
        'iAmOwed INTEGER)');
  }

  static initializeDb() async {
    String folderPath = await getDatabasesPath();
    String path = join(folderPath, "splitwise.db");

    /// for deleting database
    // await deleteDatabase(path);
    var splitDb = await openDatabase(
      path,
      version: 3,
      onConfigure: _onConfigure,
      onCreate: _onCreate,
    );

    _db = splitDb;
    return _db;
  }

  /// insert friend data into DB
  static Future<int?> insertFriend(Map<String, dynamic> friendData) async {
    var dbClient = await db;
    int id = await dbClient.insert(friendsTable, friendData);
    if (id != 0) {
      return (id);
    } else {
      return null;
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
