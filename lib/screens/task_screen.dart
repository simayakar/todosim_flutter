import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todosim_flutter/widgets/task_list.dart';
import 'package:todosim_flutter/screens/add_task_screen.dart';
import 'package:todosim_flutter/models/task.dart';


class TaskScreen extends StatefulWidget {


  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  List<Task> tasks = [
    Task(name: 'Buy coke'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCC2DD),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen(
                  (newTaskTitle){
                setState(() {
                  tasks.add(Task(name: newTaskTitle));
                });
                Navigator.pop(context);
              }));
        },
        backgroundColor: Color(0xFFfc6a9d),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60.0, left: 30.0 , right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                CircleAvatar(backgroundColor: Color(0xFFfc6a9d), radius: 30.0,child: Icon(CupertinoIcons.heart, size: 40.0,)),
               SizedBox(height: 10.0),
               Text('to-do-sim', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40.0),),
               SizedBox(height: 5.0),
               Text('${tasks.length} tasks', style: TextStyle(fontStyle: FontStyle.italic),),

             ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), topLeft: Radius.circular(30.0))),
              child: TaskList(tasks),
            ),
          )
        ],
      ),

    );
  }
}


