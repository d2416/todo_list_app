import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return TaskTile(
            label: taskData.getTaskNameById(index),
            isChecked: taskData.getTaskStatusById(index),
            taskId: index,
            longPressCallback: () {
              taskData.deleteTask(index);
            },
          );
        },
        itemCount: taskData.length,
      );
    });
  }
}
