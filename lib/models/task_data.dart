import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy shoes'),
    Task(name: 'buy ring'),
    Task(name: 'buy acble'),
  ];

  int get length {
    return tasks.length;
  }

  int get doneTasks {
    int num = 0;
    for (var task in tasks) {
      if (task.isDone) {
        num = num + 1;
      }
    }
    return num;
  }

  void addTask(String title) {
    final task = Task(name: title);
    tasks.add(task);
    notifyListeners();
  }

  void isDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
