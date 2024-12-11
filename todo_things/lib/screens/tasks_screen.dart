import 'package:flutter/material.dart';
import 'package:todo_things/widgets/task_list.dart';
import 'add_task_screen.dart';


class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});


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
              builder: (BuildContext context) => AddTaskScreen(),
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
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
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
                Text(
                  'ToDoThings',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700,

                  ),
                ),

                //text with to-do left
                Text(
                  '12 Tasks',
                  style: TextStyle(
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
              padding: EdgeInsets.symmetric(horizontal: 20.0),
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


