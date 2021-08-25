import 'package:flutter/material.dart';
import 'package:todosim_flutter/widgets/task_tile.dart';
import 'package:todosim_flutter/models/task.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;
  TaskList(this.tasks);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {



  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
        return TaskTile(taskTitle: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkboxCallback: (checkboxState) {
          setState(() {
            widget.tasks[index].isDone = checkboxState;
          });
        }
            );
    },
      itemCount: widget.tasks.length,
    );
  }
}