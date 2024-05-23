import 'package:flutter/material.dart';

class IconsPage extends StatefulWidget {
  const IconsPage({super.key});

  @override
  State<IconsPage> createState() => _IconsPageState();
}

class _IconsPageState extends State<IconsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Icons"),
      ),
      body: const Center(
        child: Icon(
          Icons.control_camera_outlined,
          color: Colors.red,
          size: 50,
        ),
      ),
    );
  }
}
