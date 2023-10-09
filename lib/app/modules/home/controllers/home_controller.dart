// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todo_list_practice/app/data/model/todo.dart';
// import 'package:todo_list_practice/app/modules/home/views/widgets/complete_todo_view.dart';
// import 'package:todo_list_practice/app/modules/home/views/widgets/edit_todo.dart';
// import 'package:todo_list_practice/app/modules/home/views/widgets/todo_home_view.dart';
// import 'package:todo_list_practice/main.dart';

// class TodoHomeController extends GetxController {
//   var currentIndex = 0.obs;
//   Rx<TextEditingController> title = TextEditingController().obs;
//   TextEditingController description = TextEditingController();

//   final RxList<Widget> tabs = [
//     const TodoHomeView(),
//     const CompletedTasks(),
//   ].obs;

//   void setState(int index) {
//     currentIndex.value = index;
//   }

//   RxList<Todo> todoList = <Todo>[
//     Todo(
//       createdTime: DateTime.now(),
//       title: RxString('Walk the Dog'),
//       description: RxString('Walk Him around the House'),
//     ),
//     Todo(
//         createdTime: DateTime.now(),
//         title: RxString('Plan Jacobs Birthday Party'),
//         description: RxString('''- Invite all his friends
// - Invite all his family members''')),
//     Todo(
//         createdTime: DateTime.now(),
//         title: RxString('Get the Grocery'),
//         description: RxString('Get all the kitchen items')),
//     Todo(
//         createdTime: DateTime.now(),
//         title: RxString('Go to Gym'),
//         description: RxString('Train Yourself Hard'))
//   ].obs;

//   RxList<Todo> completeList = <Todo>[].obs;

//   void addTodos(Todo todo) {
//     todoList.add(todo);
//     update();
//   }

//   void addTodo() {
//     final isValid = formKey.currentState!.validate();
//     if (!isValid) {
//       return;
//     } else {
//       final todo = Todo(
//           id: DateTime.now().toString(),
//           title: title.value.text.obs,
//           description: description.text.obs,
//           createdTime: DateTime.now());

//       addTodos(todo);
//       Get.back();
//     }
//   }

//   void deleteTodo(Todo todo) {
//     todoList.remove(todo);
//     update();
//   }

//   bool toggleTodoStatus(Todo todo) {
//     if (!todo.isDone) {
//       completeList.add(todo);
//       todoList.remove(todo);
//       todo.isDone = !todo.isDone;
//     } else {
//       completeList.remove(todo);
//       todoList.add(todo);
//     }
//     return todo.isDone;
//   }

//   void editTodo(Todo todo) {
//     Get.to(EditTodo(todo: todo));
//   }

//   void updateEditTodo(Todo todo) {
//     todo.title = title.value.text.obs;
//     todo.description = description.text.obs;
//   }

//   void showDialog() {
//     Get.defaultDialog(
//         title: 'Add ToDo',
//         titlePadding: const EdgeInsets.only(top: 30),
//         titleStyle: const TextStyle(fontWeight: FontWeight.bold),
//         barrierDismissible: true,
//         content: Padding(
//           padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//           child: Form(
//             key: formKey,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: title.value,
//                   validator: (title) {
//                     if (title!.isEmpty) {
//                       return 'The Title cannot be Empty';
//                     } else {
//                       return null;
//                     }
//                   },
//                   decoration: const InputDecoration(
//                       labelText: 'Title', border: UnderlineInputBorder()),
//                   maxLines: 1,
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: description,
//                   decoration: const InputDecoration(
//                       labelText: 'Description', border: UnderlineInputBorder()),
//                   maxLines: 3,
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                       style: ButtonStyle(
//                           backgroundColor:
//                               MaterialStateProperty.all(Colors.black)),
//                       onPressed: () {
//                         addTodo();
//                       },
//                       child: const Text('Save')),
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
