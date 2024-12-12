import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:  Text(
        'Task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckbox: (bool ? checkboxState){
            setState(() {isChecked = checkboxState!;});
          }
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  TaskCheckbox({required this.checkboxState, required this.toggleCheckbox});

  final bool checkboxState;
  final ValueChanged<bool?>toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: checkboxState,
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckbox,
    );
  }
}
