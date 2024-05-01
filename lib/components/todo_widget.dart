// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class ToDoWidget extends StatelessWidget {
  ToDoWidget(
      {super.key,
      required this.task,
      required this.taskCompleted,
      required this.onChanged});

  final String task;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.purple[600],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(
              task,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }
}
