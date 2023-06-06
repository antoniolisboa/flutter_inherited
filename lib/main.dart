import 'package:flutter/material.dart';
import 'package:flutter_inherited/data/task_list_inherited.dart';
import 'package:flutter_inherited/screens/edit_task_screen.dart';
import 'package:flutter_inherited/screens/home_screen.dart';
import 'package:flutter_inherited/screens/login_screen.dart';
import 'package:flutter_inherited/screens/new_task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TaskListInherited(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Utilizando o InheritedWidget',
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginScreen(),
          '/home': (context) => const HomeScreen(),
          '/newTask': (context) => const NewTaskScreen(),
          '/editTask': (context) => const EditTaskScreen(),
        },
      ),
    );
  }
}
