import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_nextline/data/datasources/database_provider.dart';
import 'package:test_nextline/data/repository/usuario_repository.dart';
import 'package:test_nextline/domain/entities/usuario.dart';

part 'usuarios_provider.g.dart';

@riverpod
Future<List<Usuario>?> usuarios(UsuariosRef ref) async {
  final databaseProvider = DatabaseProvider.instance;

  UsuarioRepository usuarioRepository = UsuarioRepository(databaseProvider);

  final usuariosMod = await usuarioRepository.getAllUsuarios();
  List<Usuario> usuariosEnt = [];

  for (var usuario in usuariosMod) {
    usuariosEnt.add(Usuario(
      id: usuario.id,
      nombre: usuario.nombre,
      fechaCreacion: usuario.fechaCreacion,
    ));
  }
  return usuariosEnt;
}
