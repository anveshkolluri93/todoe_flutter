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
            final task = tasks.getTasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (bool checkBoxState) {
                tasks.updateTask(index, checkBoxState);
              },
              deleteCallback: () {
                tasks.deleteTask(index);
              },
            );
          },
          itemCount: tasks.taskCount,
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
