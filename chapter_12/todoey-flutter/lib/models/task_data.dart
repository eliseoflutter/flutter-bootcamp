import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Cheese'),
  ];

  int get taskCount {
    return tasks.length;
  }

  void addTask(String taskTitle) {
    tasks.add(Task(name: taskTitle));
    notifyListeners();
  }

  void toggleDone(int idx) {
    tasks[idx].toggleDone();
    notifyListeners();
  }
}