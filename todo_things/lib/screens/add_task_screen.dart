import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_things/models/task_data.dart';
import 'package:todo_things/models/task.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //title
          const Text(
            'Add Text',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),

          //Text input
           Center(
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 4.0
                  )
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                    width: 6.0,
                  )
                )
              ),
              onChanged: (newText){
                newTaskTitle = newText;
              },
            ),
          ),

          const SizedBox(height: 20.0,),

          // button
          TextButton(
            style:  TextButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: Colors.lightBlueAccent,
              shape:const  RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.zero,),
            ),
            onPressed: (){
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: const Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),




        ],
      ),

    );
  }
}
