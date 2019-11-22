import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_note/models/task_data.dart';
import 'package:tasks_note/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemBuilder: (context, ind) {
            final task = tasksData.tasks[ind];
            final String taskName = tasksData.taskName(ind);

            return Dismissible(
              key: Key(taskName),
              onDismissed: (direction){
                 tasksData.deleteIndex(index: ind);
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('Task deleted')));
              },
              background: Container(color: Colors.red),
              child: TaskTile(
                taskName: task.name,
                isChecked: task.checked,
                checkBoxCallback: (isChecked) {
                  tasksData.updateList(task);
                },
              ),
            );
          },
          itemCount: tasksData.taskCount,
        );
      },
    );
  }
}
