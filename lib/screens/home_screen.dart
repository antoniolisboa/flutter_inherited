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
          Task(
            taskName: 'Learning Inglesh',
            taskDescription:
                'Aprendendo o verbo to be e aumentando o meu vocabulário.',
          ),
          Task(
            taskName: 'Aprender Flutter',
            taskDescription:
                'Construindo meus primeiros aplicativos em flutter.',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
