// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';
// import 'package:get/get.dart';
// import 'package:todo_list_practice/app/modules/home/controllers/home_controller.dart';
// import 'package:todo_list_practice/app/data/model/todo.dart';

// class TodoWidget extends GetView<TodoHomeController> {
//   final String? datTime, title, descripton, id;
//   final bool isDone;

//   const TodoWidget(
//     this.todo, {
//     super.key,
//     this.datTime,
//     this.title,
//     this.descripton,
//     this.id,
//     this.isDone = false,
//   });

//   final Todo todo;
//   @override
//   Widget build(BuildContext context) {
//     Widget buildTodo(BuildContext context) => Container(
//           color: Colors.grey[300],
//           padding: const EdgeInsets.all(20),
//           child: Row(
//             children: [
//               Checkbox(
//                 value: isDone,
//                 onChanged: (value) {
//                   controller.toggleTodoStatus(todo);
//                 },
//                 checkColor: Colors.white,
//                 activeColor: Colors.blue,
//               ),
//               Expanded(
//                   child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     title ?? "Title Here",
//                     style: const TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 22,
//                         color: Colors.black),
//                   ),
//                   if (descripton != '')
//                     Container(
//                       padding: const EdgeInsets.only(top: 4),
//                       child: Text(
//                         descripton ?? "Description",
//                         style: const TextStyle(fontSize: 20, height: 1.5),
//                       ),
//                     )
//                 ],
//               ))
//             ],
//           ),
//         );

//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: Slidable(
//           startActionPane: ActionPane(
//             key: Key(id ?? '0'),
//             motion: const StretchMotion(),
//             children: [
//               SlidableAction(
//                 onPressed: (_) {
//                   controller.editTodo(todo);
//                 },
//                 icon: Icons.edit,
//                 backgroundColor: Colors.green,
//                 foregroundColor: Colors.white,
//                 label: 'Edit',
//               )
//             // ],
//           ),
//           endActionPane: ActionPane(motion: const StretchMotion(), children: [
//             SlidableAction(
//               onPressed: (_) => controller.deleteTodo(todo),
//               icon: Icons.delete,
//               backgroundColor: Colors.red,
//               foregroundColor: Colors.white,
//               label: 'Delete',
//             )
//           ]),
//           child: buildTodo(context)),
//     );
//   }
// }
