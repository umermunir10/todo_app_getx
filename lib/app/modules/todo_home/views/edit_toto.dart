import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_practice/app/modules/todo_home/controllers/todo_home_controller.dart';

class EditTodo extends GetView<TodoHomeController> {
  final TextEditingController titleEditingController;
  const EditTodo(this.titleEditingController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Todo',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.delete))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: titleEditingController,
              validator: (title) {
                if (title!.isEmpty) {
                  return 'The Title cannot be Empty';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  hintText: 'Title', border: UnderlineInputBorder()),
              maxLines: 1,
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: controller.descriptionController,
              decoration: const InputDecoration(
                  hintText: 'Description', border: UnderlineInputBorder()),
              maxLines: 3,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                  onPressed: () {},
                  child: const Text('Save')),
            )
          ],
        ),
      ),
    );
  }
}
