class Tarea {
  final int id;
  final String titulo;
  final bool completada;
  final String fecha;
  final String comentarios;
  final String descripcion;
  final List<String> tags;

  Tarea({
    required this.id,
    required this.titulo,
    required this.completada,
    required this.fecha,
    required this.comentarios,
    required this.descripcion,
    required this.tags,
  });
}
