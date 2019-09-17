import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/models/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(String name) {
    tasks.add(Task(name: name));
    notifyListeners();
  }

  void isDone(int index, bool checkBoxState) {
    tasks[index].isDone = checkBoxState;
    notifyListeners();
  }
}
