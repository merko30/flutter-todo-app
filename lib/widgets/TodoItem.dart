import 'package:flutter/material.dart';
import '../classes/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({Key? key, required this.todo, this.onChange})
      : super(key: key);

  final Todo todo;

  final onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Expanded(
            child: Text(
          todo.text,
          style: TextStyle(
              decoration: todo.completed
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        )),
        Checkbox(
            value: todo.completed,
            onChanged: (newvalue) {
              onChange(todo.id, newvalue);
            })
      ]),
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 3,
                offset: Offset(0, 3),
                spreadRadius: 2 // Shadow position
                )
          ]),
    );
  }
}
