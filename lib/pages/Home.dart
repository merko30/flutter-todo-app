import 'package:flutter/material.dart';

import '../widgets/TodoList.dart';

import '../classes/todo.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Todo> todos = [
    Todo(id: 1, text: 'Do some homework'),
    Todo(id: 2, text: 'Do another todo')
  ];

  void onComplete(int id, bool checked) {
    List<Todo> newTodos = List.from(todos);

    int todoIndex = newTodos.indexWhere((todo) => todo.id == id);

    newTodos[todoIndex].completed = checked;

    setState(() {
      todos = newTodos;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: SizedBox(child: Text("Todo list"))),
        backgroundColor: Colors.grey,
        body: SafeArea(
            child: Container(
          child: TodoList(todos: todos, onComplete: onComplete),
          padding: EdgeInsets.all(20.0),
        )));
  }
}
