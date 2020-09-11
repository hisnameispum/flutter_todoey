import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TasksTile({this.isChecked, this.taskTitle,this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallBack,
      ),
    );
  }
}


