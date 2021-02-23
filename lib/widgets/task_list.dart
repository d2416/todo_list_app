import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getListTasks(),
    );
  }

  List<TaskTile> getListTasks() {
    List<TaskTile> tiles = [];

    List<String> tasks = [
      'Buy milk',
      'Buy eggs',
      'Buy bread',
      'Buy milk',
      'Buy eggs',
      'Buy bread',
      'Buy milk',
      'Buy eggs',
      'Buy bread',
      'Buy milk',
      'Buy eggs',
      'Buy bread',
      'Buy milk',
      'Buy eggs',
      'Buy bread'
    ];
    for (String task in tasks) {
      TaskTile tile = TaskTile(label: task);
      tiles.add(tile);
    }

    return tiles;
  }
}
