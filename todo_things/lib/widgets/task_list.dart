import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';
import 'package:todo_things/models/task_data.dart';

class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) {
        return ListView.builder(itemBuilder: (context, index){
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (bool ? checkboxState){
              //setState(() {Provider.of<TaskData>(context).tasks[index].toggleDone() ;});
              taskData.updateTask(task);
            },
            longPressCallback: (){
              taskData.deleteTask(task);
            },
          );
        },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
