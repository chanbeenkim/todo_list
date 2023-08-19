import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_list/widget/card_todo_widget.dart';

import 'common/show_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: ListTile(
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                "https://yt3.googleusercontent.com/ytc/AOPolaTtk2lw1you8FcYjn9eFiHPYaFYvITFYerT1HXzWA=s176-c-k-c0x00ffffff-no-rj"),
            radius: 25,
          ),
          title: Text(
            "Hello I'm",
            style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
          ),
          subtitle: const Text(
            "Chanbeen",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.calendar),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(CupertinoIcons.bell),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today's Task",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "Wednesday, 11 May",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD5D8FA),
                      foregroundColor: Colors.blue.shade800,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                    ),
                    onPressed: () => showModalBottomSheet(
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          16,
                        ),
                      ),
                      context: context,
                      builder: (context) => AddNewTaskModel(),
                    ),
                    child: const Text(
                      "+ New Task",
                    ),
                  ),
                ],
              ),
              // Card List Task
              const Gap(20),
              ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) => const CardTodoListWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
