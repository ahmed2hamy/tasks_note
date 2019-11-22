import 'package:flutter/material.dart';
import 'package:tasks_note/constants.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkBoxCallback;

  TaskTile({this.taskName, this.isChecked, this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: kBodyText.copyWith(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkBoxCallback,
      ),
    );
  }
}
