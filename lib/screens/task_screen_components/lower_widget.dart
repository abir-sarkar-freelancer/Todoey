import 'package:flutter/material.dart';
import '../../components/task_list.dart';

// Lower Widget
class LowerWidget extends StatelessWidget {
  const LowerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        right: 30.0,
        bottom: 30.0,
        left: 30.0,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          topRight: Radius.circular(25.0),
        ),
      ),
      child: const TasksList(),
    );
  }
}
