import 'package:flutter/material.dart';
import 'package:flutter_inherited/data/task_list_inherited.dart';

class Task extends StatefulWidget {
  final String title;
  final String description;

  const Task({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Container(
        height: 175,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                widget.description,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/editTask');
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                  ),
                  const SizedBox(width: 10),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        TaskListInherited.of(context).deleteTask(task: widget);
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.blue,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
