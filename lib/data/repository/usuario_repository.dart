import 'package:sqflite/sqflite.dart';
import 'package:test_nextline/data/datasources/database_provider.dart';
import 'package:test_nextline/data/interfaces/interface_usuario.dart';
import 'package:test_nextline/data/models/usuario_model.dart';

class UsuarioRepository implements IUsuario {
  final DatabaseProvider _databaseProvider;

  UsuarioRepository(this._databaseProvider);

  @override
  Future<List<UsuarioModel>> getAllUsuarios() async {
    final db = await _databaseProvider.database;
    final List<Map<String, dynamic>> maps = await db.query('usuario');

    return List.generate(maps.length, (i) {
      return UsuarioModel(
        id: maps[i]['id'],
        nombre: maps[i]['nombre'],
        fechaCreacion: maps[i]['fecha_creacion'],
      );
    });
  }

  @override
  Future<void> insertUsuario(UsuarioModel usuario) async {
    final db = await _databaseProvider.database;
    await db.insert(
      'usuario',
      usuario.toMap(), // Convierte el objeto UsuarioModel a un mapa
      conflictAlgorithm: ConflictAlgorithm.replace, // Opcional, manejo de conflictos
    );
  }
}
