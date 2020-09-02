import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TasksTile(),
      ],
    );
  }
}