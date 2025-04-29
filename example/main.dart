import 'package:flutter/material.dart';
import 'package:reusable_icon/reusable_icon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Float Button Demo',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Floating Button Example')),
      floatingActionButton: AppIconBtn(
        icon: Icons.add,
        tooltipTxt: 'Add Item',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating button pressed')),
          );
        },
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => _selected = !_selected),
          child: SelectableIcon(
            isSelected: _selected,
            selectedIcon: Icons.thumb_up,
            unSelectedIcon: Icons.thumb_up_off_alt,
            selectedIconColor: Colors.blue,
            unSelectedIconColor: Colors.grey,
            selectedCircleColor: Colors.blue.shade100,
            unSelectedCircleColor: Colors.grey.shade300,
            iconSize: 30,
            circleWide: 2,
          ),
        ),
      ),
    );
  }
}
