import 'dart:collection';

import 'package:flutter/cupertino.dart';

import 'Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Carrot'),
    Task(name: 'Buy Eggs'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    print('added new Task -> $newTaskTitle');
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
