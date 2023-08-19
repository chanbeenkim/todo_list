import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_list/model/todo_model.dart';

class TodoService {
  final todoCollection = FirebaseFirestore.instance.collection("todoApp");

  // CREATE
  void addNewTask(TodoModel model) {
    todoCollection.add(
      model.toMap(),
    );
  }
}
