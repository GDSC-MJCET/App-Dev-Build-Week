import 'package:flutter/material.dart';

class TextPage extends StatefulWidget {
  const TextPage({super.key});

  @override
  State<TextPage> createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text"),
      ),
      body: const Center(
        child: Text(
          "String",
          style: TextStyle(
            fontSize: 50,
            color: Color.fromARGB(255, 168, 42, 42),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
