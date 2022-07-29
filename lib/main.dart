import 'package:flutter/material.dart';
import './data/task_data.dart';
import './screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        title: "Todo App",
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.blue,
        ),
        home: const TaskScreen(),
      ),
    );
  }
}
