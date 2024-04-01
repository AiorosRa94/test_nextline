class UsuarioModel {
  final int id;
  final String nombre;
  final String fechaCreacion;

  UsuarioModel({
    required this.id,
    required this.nombre,
    required this.fechaCreacion,
  });

  // Método para convertir el modelo a un mapa
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nombre': nombre,
      'fecha_creacion': fechaCreacion,
    };
  }
}
