import 'package:flutter/material.dart';
import 'package:flutter_todoey/widgets/tasks_tile.dart';
import 'package:flutter_todoey/Models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].taskName,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkBoxCallBack: (checkBoxState){
//            setState(() {
//              Provider.of<TaskData>(context).tasks[index].toggleDone() ;
//            });
          }
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}
