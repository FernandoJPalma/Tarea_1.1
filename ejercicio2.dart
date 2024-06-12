class Tarea {
  String titulo;
  String descripcion;
  bool completada;

  Tarea(this.titulo, this.descripcion) : completada = false;

  void completar() {
    completada = true;
  }

  String obtenerEstado() {
    return completada ? "Completada" : "Incompleta";
  }

  static List<Tarea> listaDeTareas = [];

  static void agregarTarea(Tarea tarea) {
    listaDeTareas.add(tarea);
  }

  static void eliminarTarea(Tarea tarea) {
    listaDeTareas.remove(tarea);
  }

  static void completarTarea(int indice) {
    if (indice >= 0 && indice < listaDeTareas.length) {
      listaDeTareas[indice].completar();
    }
  }

  static void mostrarTareas() {
    for (int i = 0; i < listaDeTareas.length; i++) {
      Tarea tarea = listaDeTareas[i];
      print("Tarea ${i + 1}: ${tarea.titulo} - ${tarea.descripcion} [${tarea.obtenerEstado()}]");
    }
  }
}

void main() {
  Tarea tarea1 = Tarea("Levantarse", "Lograr escapar de la comodidad de la cama");
  Tarea tarea2 = Tarea("Arreglarse", "Bañarse, lavarse los dientes y vestirse bien");
  Tarea tarea3 = Tarea("Ir a la UNAH-VS", "Rezar para no encontrar trafico y llegar temprano");

  Tarea.agregarTarea(tarea1);
  Tarea.agregarTarea(tarea2);
  Tarea.agregarTarea(tarea3);

  print("Tareas:");
  Tarea.mostrarTareas();

  print("");
  
  Tarea.completarTarea(0);
  Tarea.completarTarea(1);

  print("Tareas:");
  Tarea.mostrarTareas();

  
  print("");
  
  Tarea.eliminarTarea(tarea1);
  Tarea.eliminarTarea(tarea2);

  print("Tareas:");
  Tarea.mostrarTareas();

  print("Obs: Si encontraste trafico y llegaste tarde");
}
