import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_practice/app/modules/todo_home/views/Widgets/todo_container_completed.dart';
import '../controllers/todo_home_controller.dart';

class CompletedTodoView extends GetView<TodoHomeController> {
  const CompletedTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Todo App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          centerTitle: true,
        ),
        body: Obx(() => Column(
              children: [
                ...controller.completeTodoList
                    .asMap()
                    .entries
                    .map((e) => TodoContainerCompleted(
                          index: e.key,
                          title: e.value.title,
                          description: e.value.description,
                        ))
              ],
            )));
  }
}
