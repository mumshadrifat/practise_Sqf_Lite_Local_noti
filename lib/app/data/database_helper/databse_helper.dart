import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../../model/cats_model.dart';

class DataBaseHelper {
  DataBaseHelper._privateConstructor();
  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();
  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database = await initDb();
    return _database;
  }

  initDb() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "test.db");
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
        "CREATE TABLE cats(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)");
    print("Created tables");
  }

  Future<int?> insert(Cat cat) async {
    Database? db = await instance.database;
    var result = await db?.insert('cats', cat.toMap());
    return result;
  }

  Future<List<Cat>> cats() async {
    // Get a reference to the database.
    Database? db = await instance.database;

    // Query the table for all The Cats.
    final List<Map<String, dynamic>> maps = await db!.query('cats');

    // Convert the List<Map<String, dynamic> into a List<Cat>.

    return List.generate(maps.length, (i) {
      print(maps.length);
      print(maps[i]['name']);
      return Cat(
        name: maps[i]['name'],
        age: maps[i]['age'],
      );
    });
  } // static Database? db;

}
