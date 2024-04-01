import '../models/usuario_model.dart';

abstract class IUsuario {
  Future<List<UsuarioModel>> getAllUsuarios();
  Future<void> insertUsuario(UsuarioModel usuario);
}
