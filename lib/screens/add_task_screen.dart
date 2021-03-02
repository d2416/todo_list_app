import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController addTaskTetFieldController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    String newTask;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
            controller: addTaskTetFieldController,
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (task) {
              newTask = task;
            },
          ),
          MaterialButton(
            color: Colors.lightBlueAccent,
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTask);
              addTaskTetFieldController.clear();

              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
