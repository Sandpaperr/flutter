import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_things/widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:todo_things/models/task_data.dart';



class TaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    //Main Scaffold
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,

      //Floating button at the bottom
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (BuildContext context) => SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10.0 + MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskScreen(),
                  ),
              ),
          );
        },
      ),

      //Main Column
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //title and subtitle
          Container(
            padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child:Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,
                  ),

                ),

                SizedBox(height: 10.0,),

                // Title
                const Text(
                  'ToDoThings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,

                  ),
                ),

                //text with to-do left
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),



              ],
            ),
          ),
          // Folder-like container to put to-do inside
          Expanded(
            child: Container(
              height: 300.0,
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),


                ),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}


