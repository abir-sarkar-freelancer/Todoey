import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import '../components/item_tile.dart';
import '../data/task_data.dart';

// Tasks Lists
class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.todoList[index];
            return GestureDetector(
              onLongPress: () => taskData.removeTask(task),
              child: ItemTile(
                  itemTitle: task.taskTitle,
                  isChecked: task.isChecked,
                  callBack: (checkBoxState) {
                    taskData.upDateTask(task);
                  }),
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
