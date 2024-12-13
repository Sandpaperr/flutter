import 'package:flutter/material.dart';
import 'task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier{
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy nothing'),
    Task(name: 'Bye Bye'),
  ];

  void addTask (String newTaskTitle){
    _tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

}