import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/tasks_tile.dart';
import 'package:flutter_todoey/Models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Read book'),
    Task(taskName: 'Eat good food'),
    Task(taskName: 'Become a millionaire'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskTitle: tasks[index].taskName,
          isChecked: tasks[index].isDone,
          checkBoxCallBack: (checkBoxState){
            setState(() {
              tasks[index].toggleDone() ;
            });
          }
        );
      },
      itemCount: tasks.length,
    );
  }
}
