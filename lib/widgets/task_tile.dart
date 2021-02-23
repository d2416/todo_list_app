import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    @required this.label,
  });

  final String label;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      trailing: Checkbox(
        onChanged: (value) {
          isChecked = !isChecked;
          print(isChecked);
        },
        value: isChecked,
      ),
    );
  }
}
