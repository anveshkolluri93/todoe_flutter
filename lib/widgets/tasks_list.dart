import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [Task(name: 'test 1'), Task(name: 'test2')];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkBoxCallback: (bool checkBoxState) {
              setState(() {
                tasks[index].isDone = checkBoxState;
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}

//    return ListView(
//      children: <Widget>[
//        TaskTile(
//          taskTitle: tasks[0].name,
//          isChecked: tasks[0].isDone,
//        ),
//        TaskTile(
//          taskTitle: tasks[1].name,
//          isChecked: tasks[1].isDone,
//        ),
//      ],
//    );
