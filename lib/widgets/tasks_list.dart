import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/tasks_tile.dart';
import 'package:flutter_todoey/Models/task.dart';

class TasksList extends StatelessWidget {

  List<Task> tasks = [
    Task(taskName: 'Read book'),
    Task(taskName: 'Eat good food'),
    Task(taskName: 'Become a millionaire'),
    ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TasksTile(taskTitle: tasks[index].taskName, isChecked: tasks[index].isDone,);
    },itemCount: tasks.length,);
  }
}