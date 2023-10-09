import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todo_list_practice/app/modules/todo_home/controllers/todo_home_controller.dart';
import 'package:todo_list_practice/app/modules/todo_home/views/edit_toto.dart';

class TodoContainer extends GetView<TodoHomeController> {
  final TextEditingController titleEditingController = TextEditingController();
  final TextEditingController descriptionEditingController =
      TextEditingController();

  TodoContainer(
      {super.key,
      this.title,
      this.description,
      this.isChecked = false,
      this.onDelete,
      required this.index,
      this.onEdit,
      this.id});
  final String? title, description, id;
  final bool isChecked;
  final void Function(BuildContext)? onDelete;
  final void Function(BuildContext)? onEdit;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Slidable(
        startActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            onPressed: onEdit,
            icon: Icons.edit,
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: 'Edit',
          )
          // ],
        ]),
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            onPressed: onDelete,
            icon: Icons.delete,
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Delete',
          )
        ]),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 163, 160, 160)),
          child: ListTile(
              title: Text(
                title ?? 'Initial Title Here',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                description ?? 'Some Description Here',
                style: const TextStyle(fontSize: 18),
              ),
              onTap: () {
                final capturedTitle = title ?? 'Initial Title Here';
                titleEditingController.text = capturedTitle;
                Get.to(EditTodo(titleEditingController));
              },
              leading: Obx(() => Checkbox(
                  value: controller.todoList[index].isDone.value,
                  onChanged: (value) {
                    controller.todoList[index].isDone.toggle();
                    if (controller.todoList[index].isDone.value == true) {
                      controller.completeTodoList
                          .add(controller.todoList[index]);
                      controller.todoList.remove(controller.todoList[index]);
                    }
                  }))),
        ),
      ),
    );
  }
}
