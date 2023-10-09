import 'package:get/get.dart';

class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  DateTime createdTime;
  String title;
  String description;
  String id;
  RxBool isDone;

  Todo(
      {required this.createdTime,
      required this.title,
      this.description = '',
      this.id = '',
      required this.isDone});
}
