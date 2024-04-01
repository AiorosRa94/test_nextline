import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseProvider {
  static const _databaseName = 'tasks.db';
  static const _databaseVersion = 1;

  DatabaseProvider._();
  static final DatabaseProvider instance = DatabaseProvider._();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = await getDatabasesPath();
    final databasePath = join(path, _databaseName);
    return await openDatabase(
      databasePath,
      version: _databaseVersion,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE usuario (
        id INTEGER PRIMARY KEY,
        nombre TEXT,
        fecha_creacion TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE tarea (
        id INTEGER PRIMARY KEY,
        titulo TEXT,
        completada INTEGER,
        fecha TEXT,
        comentarios TEXT,
        descripcion TEXT,
        tags TEXT
      )
    ''');
  }
}
