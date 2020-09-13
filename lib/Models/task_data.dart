import 'package:flutter/foundation.dart';
import 'package:flutter_todoey/Models/task.dart';
import 'package:provider/provider.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(taskName: 'Read book'),
    Task(taskName: 'Eat good food'),
    Task(taskName: 'Become a millionaire'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String newTaskTitle){
    final task = Task(newTaskTitle);
    tasks.add(task);
    notifyListeners();
  }
}