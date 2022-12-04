import 'package:flutter/material.dart';

class SideNavigationItem extends StatelessWidget {
  final Icon leading;
  final String text;
  int notification;
  bool isSelected;

  SideNavigationItem({
    super.key,
    required this.leading,
    required this.text,
    this.notification = 0,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        height: 32,
        decoration: isSelected
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey.shade300,
              )
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            leading,
            const SizedBox(width: 10),
            Text(text),
            const Spacer(),
            if (notification != 0) Text(notification.toString()),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
