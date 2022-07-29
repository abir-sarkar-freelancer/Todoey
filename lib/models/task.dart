class Task {
  final String taskTitle;
  bool isChecked;

  Task({
    required this.taskTitle,
    this.isChecked = false,
  });

  void toogleIsChecked() {
    isChecked = !isChecked;
  }
}
