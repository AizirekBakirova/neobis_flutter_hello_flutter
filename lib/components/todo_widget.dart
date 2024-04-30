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
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black45,
            ),
            Text(
              task,
              style: TextStyle(
                  fontSize: 20,
                  decoration: taskCompleted
                      ? TextDecoration.lineThrough
                      : TextDecoration.none),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.purple[800], borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
