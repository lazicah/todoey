import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String tasktitle;
  final Function checkboxCallback;
  final Function deleteCallback;
  TaskTile(
      {this.isChecked,
      this.tasktitle,
      this.checkboxCallback,
      this.deleteCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteCallback,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
