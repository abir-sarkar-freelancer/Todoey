import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/task_data.dart';
import '../constants.dart';

typedef CallBackWithArg = Function(bool? arg);

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({
    Key? key,
  }) : super(key: key);

  final TextEditingController todoTitleTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Add Task",
            style: TextStyle(
              color: kCommonColor,
              fontSize: 30.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              controller: todoTitleTextController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 16.0,
            ),
            child: FlatButton(
              minWidth: double.infinity,
              height: 50,
              color: kCommonColor,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTaskToList(todoTitleTextController.text);
                Navigator.pop(
                  context,
                );
              },
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
