import 'dart:io';

import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:practise_rifat/app/model/ins_model.dart';
import 'package:sqflite/sqflite.dart';

import '../../model/q6_model.dart';

class DataBaseHelper {
  DataBaseHelper._privateConstructor();

  static final DataBaseHelper instance = DataBaseHelper._privateConstructor();
  static Database? _database;
  RxInt insId = 0.obs;

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

  // void _onCreate(Database db, int version) async {
  //   // When creating the db, create the table
  //   await db.execute(
  //       "CREATE TABLE Inspection(id INTEGER PRIMARY KEY, stucureId TEXT, age INTEGER)");
  //   print("Created tables");
  // }
  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE inspection(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, structureId TEXT, insDate TEXT)',
    );

    await db.execute(
      '''CREATE TABLE inspObsIndviStrTmps(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, compId TEXT, crack TEXT, tilting INTEGER, insId INTEGER)''',
    );
    await db.execute(
      '''CREATE TABLE VisualObservation(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, compId TEXT, crack TEXT, tilting INTEGER, insId INTEGER)''',
    );
  }

  Future<int?> insertInsModel(InsModel insModel) async {
    Database? db = await instance.database;
    var result = await db?.insert('inspection', insModel.toJson());
    print("ins_id==>${result}");
    insId.value = result!;
    print("inserted inspection");
    return result;
  }

  Future<int?> insertQ6(Q6 q6) async {
    Database? db = await instance.database;

    var result = await db?.insert('inspObsIndviStrTmps', q6.toJson());
    print(" id_q6==>${result}");
    print("inserted q6");

    return result;
  }

  Future<void> query() async {
    // get a reference to the database
    Database? db = await instance.database;
    int rowId = 1;
    List<dynamic> whereArguments = [rowId];
    List<Map> result = await db!.query(
      "inspObsIndviStrTmps",
      columns: ["compId", "insId"],
      where: "insId",
    );


    result.forEach((row) => print(row));

  }

  Future<void> newQuery() async {
    // get a reference to the database
    Database? db = await instance.database;

    // get all rows
    List<Map> result =
        await db!.rawQuery("SELECT * FROM inspObsIndviStrTmps WHERE insId=2");

    result.forEach((row) => print(row));
  }
}


