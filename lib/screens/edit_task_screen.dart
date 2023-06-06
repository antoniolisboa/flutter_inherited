import 'package:flutter/material.dart';
import 'package:flutter_inherited/data/task_list_inherited.dart';

class EditTaskScreen extends StatefulWidget {
  const EditTaskScreen({super.key});

  @override
  State<EditTaskScreen> createState() => _EditTaskScreenState();
}

class _EditTaskScreenState extends State<EditTaskScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final _taskFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _taskFormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'No title added.';
                  }

                  return null;
                },
                controller: _titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                  prefixIcon: Icon(Icons.edit),
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'No descrption added.';
                  }

                  return null;
                },
                controller: _descriptionController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Description',
                    prefixIcon: Icon(Icons.description)),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_taskFormKey.currentState!.validate()) {
                          TaskListInherited.of(context).createTask(
                            title: _titleController.text,
                            description: _descriptionController.text,
                          );

                          Navigator.pop(context);
                        }
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(14),
                        child: Text('Submit'),
                      ),
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
