import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {@required this.label,
      @required this.isChecked,
      this.taskId,
      this.longPressCallback});

  final String label;
  final bool isChecked;
  final int taskId;
  final Function longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        this.label,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value) {
          Provider.of<TaskData>(context, listen: false).toggleDone(this.taskId);
        },
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
