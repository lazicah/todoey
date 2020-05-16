import 'package:flutter/material.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              tasktitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkState) {
                taskData.isDone(task);
              },
              deleteCallback: () {
                Provider.of<TaskData>(context, listen: false).deleteTask(task);
              },
            );
          },
          itemCount: taskData.length,
        );
      },
    );
  }
}
