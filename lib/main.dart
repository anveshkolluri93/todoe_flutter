import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/providers/tasks_provider.dart';
import 'package:todo_flutter/screens/tasks_screen.dart';

import 'models/task.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Task> tasks = [];
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TasksProvider>(
      builder: (context) => TasksProvider(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
