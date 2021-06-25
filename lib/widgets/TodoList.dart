import 'package:flutter/material.dart';

import 'TodoItem.dart';

import '../classes/todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({Key? key, required this.todos, this.onComplete})
      : super(key: key);

  final List<Todo> todos;

  final onComplete;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: this.todos.map((todo) {
      return TodoItem(
        todo: todo,
        onChange: onComplete,
      );
    }).toList());
  }
}
