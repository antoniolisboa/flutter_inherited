import 'package:flutter/material.dart';
import 'package:flutter_inherited/componets/task.dart';
import 'package:flutter_inherited/componets/task_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      drawer: const TaskDrawer(),
      body: ListView(
        children: const [
          Task(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
