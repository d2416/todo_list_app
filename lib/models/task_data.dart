import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy milk 1'),
    Task(name: 'Buy eggs 2'),
    Task(name: 'Buy bread 3'),
    Task(name: 'Buy PQ'),
  ];

  int get length => _tasks.length;

  UnmodifiableListView<Task> get tasks => _tasks;

  Task getTask(int index) => _tasks[index];

  String getTaskNameById(int index) => _tasks[index].name;

  bool getTaskStatusById(int index) => _tasks[index].isDone;

  toggleDone(int index) {
    _tasks[index].toggleDone();
    notifyListeners();
  }

  addTask(String label) {
    final Task task = Task(name: label);
    _tasks.add(task);
    notifyListeners();
  }

  deleteTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
