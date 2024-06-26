// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:neobis_flutter_hello_flutter/components/add_task_wiget.dart';
import 'package:neobis_flutter_hello_flutter/components/todo_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List toDoList = [
    ['Buy detergents', false],
    ['Cook dinner', false],
    ['Do exercises', false],
    ['Read a book', false],
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void saveNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
      Navigator.of(context).pop();
    });
  }

  void addTask() {
    showDialog(
        context: context,
        builder: (context) {
          return AddTaskWidget(
            controller: _controller,
            onSave: saveNewTask,
            onCancel: () {
              Navigator.of(context).pop();
            },
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'TO DO',
            style: TextStyle(color: Colors.black),
          )),
          backgroundColor: Colors.blue[200],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addTask,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: Colors.blue[200],
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoWidget(
                task: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index),
                deleteFunction: (context) {
                  deleteTask(index);
                },
              );
            }));
  }
}
