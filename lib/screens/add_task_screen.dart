import 'package:flutter/material.dart';
import 'package:todosim_flutter/models/task.dart';
import 'package:todosim_flutter/widgets/task_tile.dart';
import 'package:todosim_flutter/widgets/task_list.dart';


class AddTaskScreen extends StatelessWidget {


  final Function addTaskCallback;
  String newTaskTitle;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
       color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task', textAlign: TextAlign.center, style: TextStyle(color: Color(0xFFfc6a9d), fontSize: 40.0, fontFamily: 'Open Sans Condensed' ),),
            TextField(
                autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){
                  newTaskTitle = newText;
              },
            ),
            SizedBox(height: 10.0),
            FlatButton(child: Text('Add'),
                color: Colors.pinkAccent,
                onPressed: (){
                    addTaskCallback(newTaskTitle);

                },
            ),

    ]
        ),
      ),
    );
  }
}
