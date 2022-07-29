import 'package:flutter/foundation.dart';
import '../models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _todoList = [
    // Task(taskTitle: "Bulk Milk"),
    // Task(taskTitle: "Bulk Milk"),
  ];

  UnmodifiableListView<Task> get todoList {
    return UnmodifiableListView(_todoList);
  }

  int get taskCount {
    return todoList.length;
  }

  void addTaskToList(String itemTitle) {
    Task newTask = Task(taskTitle: itemTitle);
    _todoList.add(newTask);
    notifyListeners();
  }

  void upDateTask(Task task) {
    task.toogleIsChecked();
    notifyListeners();
  }

  void removeTask(Task task) {
    _todoList.remove(task);
    notifyListeners();
  }
}
