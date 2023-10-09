// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todo_list_practice/app/modules/home/controllers/home_controller.dart';
// import 'package:todo_list_practice/app/modules/home/views/widgets/todo_widget.dart';

// class TodoHomeView extends GetView<TodoHomeController> {
//   const TodoHomeView({
//     super.key,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return controller.todoList.isEmpty
//         ? const Center(
//             child: Text(
//               'No Todos',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//             ),
//           )
//         : Scaffold(
//             body: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: Obx(() => ListView.separated(
//                           scrollDirection: Axis.vertical,
//                           itemCount: controller.todoList.length,
//                           separatorBuilder: (context, index) =>
//                               const SizedBox(height: 10),
//                           itemBuilder: (context, index) {
//                             final todo = controller.todoList[index];
//                             return TodoWidget(
//                               title: todo.title.value,
//                               descripton: todo.description.value,
//                               datTime: todo.createdTime.toString(),
//                               todo,
//                             );
//                           },
//                         )),
//                   )
//                 ],
//               ),
//             ),
//             floatingActionButton: FloatingActionButton(
//               backgroundColor: Colors.blue,
//               onPressed: () {
//                 controller.showDialog();
//               },
//               child: const Icon(Icons.add),
//             ),
//           );
//   }
// }
