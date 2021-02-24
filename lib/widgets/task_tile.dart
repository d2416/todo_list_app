import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {@required this.label, @required this.isChecked, this.checkboxCallback});

  final String label;
  final bool isChecked;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        this.label,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}
