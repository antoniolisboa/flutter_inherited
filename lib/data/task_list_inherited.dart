import 'package:flutter/material.dart';
import 'package:flutter_inherited/components/task.dart';

class TaskListInherited extends InheritedWidget {
  final List<Task> taskList = [
    const Task(
      title: 'Task title',
      description: 'Task description',
    ),
  ];

  TaskListInherited({
    Key? key,
    required Widget child,
  }) : super(key: key, child: child);

  static TaskListInherited of(BuildContext context) {
    final TaskListInherited? result;
    result = context.dependOnInheritedWidgetOfExactType<TaskListInherited>();

    assert(result != null, 'No TaskInherited found in context');

    return result!;
  }

  @override
  bool updateShouldNotify(TaskListInherited oldWidget) {
    return oldWidget.taskList.length != taskList.length;
  }

  void createTask({required String title, required String description}) {
    taskList.add(Task(
      title: title,
      description: description,
    ));
  }

  void deleteTask({required Task task}) {
    taskList.remove(task);
    print(taskList.length);
  }
}
