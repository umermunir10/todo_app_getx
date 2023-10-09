// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:todo_list_practice/app/modules/home/controllers/home_controller.dart';
// import 'package:todo_list_practice/app/modules/home/views/widgets/todo_widget.dart';

// class CompletedTasks extends GetView<TodoHomeController> {
//   const CompletedTasks({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return controller.completeList.isEmpty
//         ? const Center(
//             child: Text(
//               'No Completed Tasks',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//             ),
//           )
//         : Scaffold(
//             body: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Obx(() => ListView.separated(
//                         scrollDirection: Axis.vertical,
//                         itemCount: controller.completeList.length,
//                         separatorBuilder: (context, index) =>
//                             const SizedBox(height: 10),
//                         itemBuilder: (context, index) {
//                           final todo = controller.completeList[index];
//                           return TodoWidget(
//                             title: todo.title.value,
//                             descripton: todo.description.value,
//                             datTime: todo.createdTime.toString(),
//                             todo,
//                           );
//                         },
//                       )),
//                 )
//               ],
//             ),
//           ));
//   }
// }
