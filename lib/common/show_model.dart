import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list/constants/app_style.dart';

import '../widget/textfield_widget.dart';

class AddNewTaskModel extends StatelessWidget {
  const AddNewTaskModel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: double.infinity,
            child: Text(
              "New Task Todo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(
            thickness: 1.2,
            color: Colors.grey.shade200,
          ),
          const Gap(12),
          const Text("Title Task", style: AppStyle.headingOne),
          const Gap(6),
          const TextFieldWidget(
            hintText: "Add Task Name.",
            maxLine: 1,
          ),
          const Gap(12),
          const Text("Description"),
          const TextFieldWidget(hintText: "Add Descriptions", maxLine: 3),
        ],
      ),
    );
  
}
