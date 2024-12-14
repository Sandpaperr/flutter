import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_things/models/task_data.dart';


class TaskTile extends StatelessWidget {
  TaskTile({required this.taskTitle, required this.isChecked, required this.checkboxCallback, required this.removeTaskCallback});

  final bool isChecked;
  final String taskTitle;
  final ValueChanged<bool?> checkboxCallback;
  final GestureLongPressCallback? removeTaskCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      onLongPress: removeTaskCallback,
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}


