import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/providers/tasks_provider.dart';
import 'package:todo_flutter/widgets/tasks_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksProvider>(
      builder: (context, tasks, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle:
                  Provider.of<TasksProvider>(context).getTasks[index].name,
              isChecked:
                  Provider.of<TasksProvider>(context).getTasks[index].isDone,
              checkBoxCallback: (bool checkBoxState) {
                Provider.of<TasksProvider>(context)
                    .isDone(index, checkBoxState);
              },
            );
          },
          itemCount: Provider.of<TasksProvider>(context).taskCount,
        );
      },
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
