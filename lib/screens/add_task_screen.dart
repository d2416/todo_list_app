import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function newTaskCallback;
  final TextEditingController addTaskTetFieldController =
      TextEditingController();

  AddTaskScreen({this.newTaskCallback});

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
              newTaskCallback(newTask);
              addTaskTetFieldController.clear();
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
