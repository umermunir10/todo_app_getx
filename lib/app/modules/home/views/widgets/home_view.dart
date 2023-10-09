// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:todo_list_practice/app/modules/home/controllers/home_controller.dart';

// class HomeView extends GetView<TodoHomeController> {
//   const HomeView({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Obx(() => Scaffold(
//           appBar: AppBar(
//             elevation: 0,
//             title: const Text(
//               'ToDo App',
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//             ),
//             centerTitle: true,
//           ),
//           body: controller.tabs[controller.currentIndex.value],
//           bottomNavigationBar: BottomNavigationBar(
//               backgroundColor: Colors.blue,
//               unselectedItemColor: Colors.white.withOpacity(0.7),
//               selectedItemColor: Colors.white,
//               currentIndex: controller.currentIndex.value,
//               onTap: (index) {
//                 controller.setState(index);
//               },
//               // items: const [
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.fact_check_outlined), label: 'Todo'),
//                 BottomNavigationBarItem(
//                     icon: Icon(Icons.done), label: 'Completed')
//               ]),
//         ));
//   }
// }
