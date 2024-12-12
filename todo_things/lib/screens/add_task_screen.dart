import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0,),
      child: Column(
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
          const Center(
            child: TextField(
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
            ),
          ),

          // button
          TextButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.lightBlueAccent),
            ),
            onPressed: (){},
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
