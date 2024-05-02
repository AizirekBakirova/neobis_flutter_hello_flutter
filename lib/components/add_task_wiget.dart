import 'package:flutter/material.dart';
import 'package:neobis_flutter_hello_flutter/components/my_button.dart';

class AddTaskWidget extends StatelessWidget {
  AddTaskWidget(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        height: 150,
        width: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Create a new task'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(
                  text: 'Save',
                  onPressed: onSave,
                ),
                const SizedBox(
                  width: 10,
                ),
                MyButton(
                  text: 'Cancel',
                  onPressed: onCancel,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
