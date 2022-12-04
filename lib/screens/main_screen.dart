import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:things3_ui_clone/color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: bodyBackgroundColor,
        child: Column(
          children: [
            WindowTitleBarBox(child: MoveWindow()),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0, left: 48.0),
                child: Container(
                  constraints: const BoxConstraints.expand(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/hyeju 1.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 2.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 3.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 4.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 5.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 6.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 7.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 8.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/hyeju 9.gif',
                          width: 360,
                        ),
                        const SizedBox(height: 24),
                        Image.asset(
                          'assets/images/icon_20.gif',
                          width: 360,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Divider(height: 1),
            Container(
              constraints: const BoxConstraints(maxWidth: 640),
              height: 42,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(Icons.add, size: 21.0),
                  Icon(Icons.add_box, size: 21.0),
                  Icon(Icons.calendar_month, size: 21.0),
                  Icon(Icons.arrow_forward, size: 21.0),
                  Icon(Icons.search, size: 21.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
