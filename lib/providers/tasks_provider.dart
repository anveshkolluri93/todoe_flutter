import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo_flutter/models/task.dart';

class TasksProvider extends ChangeNotifier {
  List<Task> _tasks = [];

  void addTask(String name) {
    _tasks.add(Task(name: name));
    notifyListeners();
  }

  UnmodifiableListView<Task> get getTasks {
    return UnmodifiableListView(_tasks);
  }

  void isDone(int index, bool checkBoxState) {
    _tasks[index].isDone = checkBoxState;
    notifyListeners();
  }

  int get taskCount {
    return _tasks.length;
  }
}
