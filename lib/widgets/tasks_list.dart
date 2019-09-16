import 'package:flutter/material.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/tasks_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallback: (bool checkBoxState) {
              setState(() {
                widget.tasks[index].isDone = checkBoxState;
              });
            });
      },
      itemCount: widget.tasks.length,
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
