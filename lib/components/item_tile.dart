import 'package:flutter/material.dart';

typedef CallBackWithArg = Function(bool? arg);

//ItemTile
class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
    required this.itemTitle,
    required this.isChecked,
    required this.callBack,
  }) : super(key: key);

  final String itemTitle;
  final bool isChecked;
  final CallBackWithArg callBack;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        itemTitle,
        style: TextStyle(
          fontSize: 25,
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      value: isChecked,
      onChanged: callBack,
    );
  }
}
