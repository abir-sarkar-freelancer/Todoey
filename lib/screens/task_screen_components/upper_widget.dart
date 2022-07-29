import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../data/task_data.dart';
import 'package:provider/provider.dart';

// Upper Widget
class UpperWidget extends StatelessWidget {
  const UpperWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return Container(
          padding: const EdgeInsets.only(
            top: 60.0,
            right: 30.0,
            bottom: 30.0,
            left: 30.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Icon
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 30,
                child: Icon(
                  Icons.list,
                  color: kCommonColor,
                  size: 45,
                ),
              ),
              //gap
              const SizedBox(
                height: 30,
              ),

              //title text
              const Text(
                "Todoey",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //subtitle text
              Text(
                "${taskData.taskCount} Tasks",
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
