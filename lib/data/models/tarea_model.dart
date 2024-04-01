class TareaModel {
  final int id;
  final String titulo;
  final bool completada;
  final String fecha;
  final String comentarios;
  final String descripcion;
  final List<String> tags;

  TareaModel({
    required this.id,
    required this.titulo,
    required this.completada,
    required this.fecha,
    required this.comentarios,
    required this.descripcion,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'completada': completada ? 1 : 0,
      'fecha': fecha,
      'comentarios': comentarios,
      'descripcion': descripcion,
      'tags': tags.join(','),
    };
  }
}
