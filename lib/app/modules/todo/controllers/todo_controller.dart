import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list_practice/app/modules/todo_home/controllers/todo_home_controller.dart';
import 'package:todo_list_practice/app/modules/todo_home/views/completed.dart';
import 'package:todo_list_practice/app/modules/todo_home/views/todo_home_view.dart';

class TodoController extends GetxController {
  RxInt currentIndex = 0.obs;
  List<String> navTitle = ['Completed', 'Incomplete'];
  List<Widget> views = [const TodoHomeView(), const CompletedTodoView()];

  List<IconData> icons = [Icons.fact_check_outlined, Icons.done];
  void setIndex(int index) {
    currentIndex.value = index;
    if (index == 0) {
      Get.put<TodoHomeController>(TodoHomeController());
    }
  }

  @override
  void onInit() {
    Get.put<TodoHomeController>(TodoHomeController());
    super.onInit();
  }
}
