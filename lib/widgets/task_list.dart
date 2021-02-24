import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = getListTasks();

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          label: tasks[index].name,
          isChecked: tasks[index].isDone,
        );
      },
      itemCount: tasks.length,
    );
  }

  List<Task> getListTasks() {
    List<Task> tasks = [
      createTask(0),
      createTask(1),
      createTask(2),
    ];

    return tasks;
  }

  Task createTask(int counter) {
    return Task(name: 'Buy milk $counter');
  }
}
