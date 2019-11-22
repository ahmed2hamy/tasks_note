import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_note/constants.dart';
import 'package:tasks_note/models/task_data.dart';
import 'package:tasks_note/screens/add_task_screen.dart';
import 'package:tasks_note/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => AddTask());
        },
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 40,
                  ),
                  backgroundColor: Colors.white,
                  radius: 40,
                ),
                SizedBox(height: 20),
                Text('Tasks Note', style: kTitleText),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks',
                    style: kBodyText),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
