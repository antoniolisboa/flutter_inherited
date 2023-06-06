import 'package:flutter/material.dart';
import 'package:flutter_inherited/components/task_drawer.dart';
import 'package:flutter_inherited/data/task_list_inherited.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: const TaskDrawer(),
      body: ListView(
        children: TaskListInherited.of(context).taskList,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/newTask');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
