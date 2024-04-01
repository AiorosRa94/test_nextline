import '../models/tarea_model.dart';

abstract class ITarea {
  Future<List<TareaModel>> getAllTareas();
  Future<void> insertTarea(TareaModel tarea);
}
