import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:things3_ui_clone/color.dart';
import 'package:things3_ui_clone/widgets/side_navigation_item.dart';

class SideNavigationBar extends StatefulWidget {
  const SideNavigationBar({super.key});

  @override
  State<SideNavigationBar> createState() => _SideNavigationBarState();
}

class _SideNavigationBarState extends State<SideNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Container(
        color: sideNavbarBackgroundColor,
        child: Column(
          children: [
            WindowTitleBarBox(child: MoveWindow()),
            Expanded(
              // It'd be better to use ListView.builder than ListView, but it's just UI clone so...
              child: ListView(
                children: [
                  SideNavigationItem(
                    leading: const Icon(
                      Icons.star,
                      size: 18.0,
                    ),
                    text: "Today",
                    notification: 3,
                    isSelected: true,
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            SizedBox(
              height: 42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(width: 20),
                  Icon(Icons.add, size: 18.0),
                  SizedBox(width: 10),
                  Text("New List"),
                  Spacer(),
                  Icon(Icons.settings_outlined, size: 18.0),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
