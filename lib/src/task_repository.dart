import 'package:gtd_domain/gtd_domain.dart';
import 'package:gtd_domain/src/repository.dart';

class TaskRepository implements Repository<Task> {
  List<Task> _tasks = [];

  // Singleton
  TaskRepository._shared();
  static final shared = TaskRepository._shared();

  // Overrides
  @override
  int get length => _tasks.length;

  @override
  Task operator [](int index) {
    return _tasks[index];
  }

  @override
  void add(Task element) {
    insert(0, element);
  }

  @override
  void insert(int index, Task element) {
    _tasks.insert(index, element);
  }

  @override
  void move(int from, int to) {
    final taskFrom = _tasks[from];
    _tasks.removeAt(from);
    _tasks.insert(to, taskFrom);
  }

  @override
  void remove(Task element) {
    _tasks.remove(element);
  }

  @override
  void removeAt(int index) {
    _tasks.removeAt(index);
  }
}

extension Testing on TaskRepository {
  void reset() {
    _tasks = [];
  }

  void addTestData() {
    // un bucle for de 1 a 100
    // que añade tareas en estado toDo (si el índice es par)
    // y en estado done (si es impar)
    // OJO: mira a ver si int es un objeto y si tiene métodos que sirvan para esto
  }
}
