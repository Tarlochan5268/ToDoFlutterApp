import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutterapp/models/TaskData.dart';
import 'package:todo_flutterapp/widgets/TaskTile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallback: (checkBoxState) {
                taskData.updateTask(task);
              },
              longPressCallback: () {
                taskData.deleTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
