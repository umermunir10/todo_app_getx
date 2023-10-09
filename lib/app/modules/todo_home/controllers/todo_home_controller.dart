import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_practice/app/data/model/todo.dart';

class TodoHomeController extends GetxController {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  final TextEditingController editTitleController = TextEditingController();
  final TextEditingController esitDescriptionController =
      TextEditingController();
  RxBool isChecked = false.obs;

  RxList<Todo> todoList = <Todo>[
    Todo(
        isDone: false.obs,
        createdTime: DateTime.now(),
        title: 'Walk The Dog',
        description: 'Walk him around the House'),
    Todo(
        isDone: false.obs,
        createdTime: DateTime.now(),
        title: 'Go to Gym',
        description: 'Get Fit'),
    Todo(
        isDone: false.obs,
        createdTime: DateTime.now(),
        title: 'Watch the Match',
        description: 'Do not miss any ball'),
    Todo(
        isDone: false.obs,
        createdTime: DateTime.now(),
        title: 'Buy Grocerires',
        description: 'Do not miss any item')
  ].obs;

  RxList<Todo> completeTodoList = <Todo>[].obs;

  void deleteTodo(int index) {
    todoList.remove(todoList[index]);
  }

  void toggleTodoStatus(int index, RxList list) {}

  void showDialog() {
    Get.defaultDialog(
        title: 'Add ToDo',
        titlePadding: const EdgeInsets.only(top: 30),
        titleStyle: const TextStyle(fontWeight: FontWeight.bold),
        barrierDismissible: true,
        content: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              TextFormField(
                controller: titleController,
                validator: (title) {
                  if (title!.isEmpty) {
                    return 'The Title cannot be Empty';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    labelText: 'Title', border: UnderlineInputBorder()),
                maxLines: 1,
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: descriptionController,
                decoration: const InputDecoration(
                    labelText: 'Description', border: UnderlineInputBorder()),
                maxLines: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black)),
                    onPressed: () {
                      todoList.add(Todo(
                          isDone: false.obs,
                          createdTime: DateTime.now(),
                          title: titleController.text,
                          description: descriptionController.text));
                      Get.back();
                    },
                    child: const Text('Save')),
              )
            ],
          ),
        ));
  }
}
