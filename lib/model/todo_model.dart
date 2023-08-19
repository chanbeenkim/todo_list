// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  final String? docID;
  final String titleTask;
  final String description;
  final String category;
  final String dateTask;
  final String timeTask;

  TodoModel(
      {this.docID,
      required this.titleTask,
      required this.description,
      required this.category,
      required this.dateTask,
      required this.timeTask});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'docID': docID,
      'titleTask': titleTask,
      'description': description,
      'category': category,
      'dateTask': dateTask,
      'timeTask': timeTask,
    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      docID: map['docID'] != null ? map['docID'] as String : null,
      titleTask: map['titleTask'] as String,
      description: map['description'] as String,
      category: map['category'] as String,
      dateTask: map['dateTask'] as String,
      timeTask: map['timeTask'] as String,
    );
  }

  factory TodoModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> doc) {
    return TodoModel(
        titleTask: doc["titleTask"],
        description: doc["description"],
        category: doc["category"],
        dateTask: doc["dateTask"],
        timeTask: doc["timeTask"]);
  }
}
