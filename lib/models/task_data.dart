import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:tasks_note/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  String taskName(int ind){
    return _tasks[ind].name;
  }

  void addToList({@required String name}) {
    final task = Task(name: name);
    _tasks.add(task);
    notifyListeners();
  }

  void updateList(Task task) {
    task.toggleCheckBox();
    notifyListeners();
  }

  void deleteIndex({index}){
    _tasks.removeAt(index);
    notifyListeners();
  }
}
