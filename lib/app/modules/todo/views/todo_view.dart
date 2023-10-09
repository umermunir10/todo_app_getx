import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/todo_controller.dart';

class TodoView extends GetView<TodoController> {
  const TodoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.views[controller.currentIndex.value]),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(
          children: [
            ...controller.navTitle.asMap().entries.map((e) => Obx(
                  () => InkWell(
                    onTap: () {
                      controller.setIndex(e.key);
                    },
                    child: Container(
                      color: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 60.5),
                      child: Column(
                        children: [
                          Icon(controller.icons[e.key],
                              color: controller.currentIndex.value != e.key
                                  ? Colors.black
                                  : Colors.white),
                          Text(
                            e.value,
                            style: TextStyle(
                                color: controller.currentIndex.value != e.key
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight:
                                    controller.currentIndex.value != e.key
                                        ? FontWeight.w300
                                        : FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
