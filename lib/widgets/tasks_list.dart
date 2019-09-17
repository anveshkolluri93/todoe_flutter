import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/providers/tasks_provider.dart';
import 'package:todo_flutter/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Provider.of<TasksProvider>(context).tasks[index].name,
            isChecked: Provider.of<TasksProvider>(context).tasks[index].isDone,
            checkBoxCallback: (bool checkBoxState) {
              setState(() {
                Provider.of<TasksProvider>(context).tasks[index].isDone =
                    checkBoxState;
              });
            });
      },
      itemCount: Provider.of<TasksProvider>(context).tasks.length,
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
