import 'package:flutter/material.dart';
import 'package:todoey_flutter/screens/tasks_screens.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TasksScreen();
  }
}
