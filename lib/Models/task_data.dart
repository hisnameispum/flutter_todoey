import 'package:flutter/foundation.dart';
import 'package:flutter_todoey/Models/task.dart';
class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(taskName: 'Read book'),
    Task(taskName: 'Eat good food'),
    Task(taskName: 'Become a millionaire'),
  ];
}