import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_note/constants.dart';
import 'package:tasks_note/models/task_data.dart';

class AddTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task', textAlign: TextAlign.center, style: kHeadText),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (val) {
                  taskName = val;
              },
            ),
            SizedBox(height: 20),
            FlatButton(
              onPressed: () {
                if (taskName != null){
                  Provider.of<TaskData>(context).addToList(name: taskName);
                  Navigator.pop(context);
                }
              },
              child: Text('Add', style: kBodyText),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
