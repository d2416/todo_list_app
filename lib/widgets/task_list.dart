import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getListTasks(),
    );
  }

  List<TaskTile> getListTasks() {
    List<TaskTile> tiles = [];

    List<Task> tasks = [
      createTask(),
      createTask(),
      createTask(),
      createTask(),
      createTask(),
      createTask(),
      createTask(),
      createTask(),
      createTask(),
      createTask(),
    ];
    for (Task task in tasks) {
      TaskTile tile = TaskTile(
        label: task.name,
        isChecked: task.isDone,
      );
      tiles.add(tile);
    }

    return tiles;
  }

  Task createTask() {
    return Task(name: 'Buy milk');
  }
}
