import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/tasks_tile.dart';
import 'package:flutter_todoey/Models/task.dart';
class TasksList extends StatefulWidget {
  final List<Task> tasks;

  const TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskTitle: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (checkBoxState){
            setState(() {
              widget.tasks[index].toggleDone() ;
            });
          }
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
