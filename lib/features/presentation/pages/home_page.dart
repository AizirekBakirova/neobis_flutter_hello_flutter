// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:neobis_flutter_hello_flutter/components/todo_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List toDoList = [
    ['Buy detergents', true],
    ['Make dinner', false]
  ];

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void addTask() {
    showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[200],
        appBar: AppBar(
          title: const Center(child: Text('TO DO')),
          backgroundColor: Colors.purple[800],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: addTask,
          child: const Icon(Icons.add),
          backgroundColor: Colors.purple[800],
        ),
        body: ListView.builder(
            itemCount: toDoList.length,
            itemBuilder: (context, index) {
              return ToDoWidget(
                  task: toDoList[index][0],
                  taskCompleted: toDoList[index][1],
                  onChanged: (value) => checkBoxChanged(value, index));
            }));
  }
}
