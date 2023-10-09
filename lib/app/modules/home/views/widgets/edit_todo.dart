// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_view.dart';
// import 'package:todo_list_practice/app/modules/home/controllers/home_controller.dart';
// import 'package:todo_list_practice/app/data/model/todo.dart';
// import 'package:todo_list_practice/main.dart';

// class EditTodo extends GetView<TodoHomeController> {
//   final Todo todo;

//   const EditTodo({super.key, required this.todo});

//   @override
//   Widget build(BuildContext context) {
//     final titleController = TextEditingController(text: todo.title.value);
//     final descriptionController =
//         TextEditingController(text: todo.description.value);

//     void updateTodo(String title, String description) {
//       controller.title.value = titleController;
//       controller.description = descriptionController;
//     }

//     void saveTodo() {
//       final isValid = formKey.currentState!.validate();
//       if (!isValid) {
//         // return;
//       } else {
//         updateTodo(todo.title.value, todo.description.value);
//         // controller.update();
//         controller.updateEditTodo(todo);
//         Get.back();
//       }
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Edit Todo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Form(
//           key: formKey,
//           child: Column(children: [
//             TextFormField(
//               controller: titleController,
//               maxLines: 1,
//               decoration: const InputDecoration(
//                   labelText: 'Title', border: UnderlineInputBorder()),
//               validator: (title) {
//                 if (title!.isEmpty) {
//                   return 'The Title cannot be Empty';
//                 } else {
//                   return null;
//                 }
//               },
//             ),
//             const SizedBox(height: 10),
//             TextFormField(
//               controller: descriptionController,
//               maxLines: 3,
//               decoration: const InputDecoration(
//                   labelText: 'Description', border: UnderlineInputBorder()),
//             ),
//             const SizedBox(height: 20),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                   style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.black)),
//                   onPressed: saveTodo,
//                   child: const Text('Save')),
//             )
//           ]),
//         ),
//       ),
//     );
//   }
// }
