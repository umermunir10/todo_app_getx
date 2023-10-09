import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_practice/app/modules/todo_home/views/Widgets/todo_container.dart';
import 'package:todo_list_practice/app/modules/todo_home/views/edit_toto.dart';
import '../controllers/todo_home_controller.dart';

class TodoHomeView extends GetView<TodoHomeController> {
  const TodoHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Todo App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
        centerTitle: true,
      ),
      body: Obx(() => ListView.builder(
            itemCount: controller.todoList.length,
            itemBuilder: (context, index) => GestureDetector(
                //onTap: () => Get.to(EditTodo(titleEditingController)),
                child: TodoContainer(
              index: index,
              title: controller.todoList[index].title,
              description: controller.todoList[index].description,
              onDelete: (context) => controller.deleteTodo(index),
              // onEdit: (context) {
              //   Get.to(const EditTodo());
              // }
            )),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          controller.showDialog();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
