import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/models/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task task) {
    tasks.add(task);
    notifyListeners();
  }
}
