import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:things3_ui_clone/screens/main_screen.dart';
import 'package:things3_ui_clone/widgets/side_navigation_bar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());

  doWhenWindowReady(() {
    const minSize = Size(640, 480);
    appWindow.minSize = minSize;
    appWindow.size = const Size(1280, 960);
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: WindowBorder(
          color: Colors.red,
          width: 5.0,
          child: Row(
            children: const [
              SideNavigationBar(),
              MainScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
