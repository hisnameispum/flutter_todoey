import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;

  void checkBoxCallback(bool checkboxState){
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Workout',
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: CustomCheckBox(isChecked, checkBoxCallback),
    );
  }
}

class CustomCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function checkboxFunction;
  
  

  CustomCheckBox(this.checkBoxState,this.checkboxFunction);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.lightBlueAccent,
      onChanged: checkboxFunction,
    );
  }
}
