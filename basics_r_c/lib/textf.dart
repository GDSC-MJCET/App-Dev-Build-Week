import 'package:flutter/material.dart';

class TextFPage extends StatefulWidget {
  const TextFPage({super.key});

  @override
  State<TextFPage> createState() => _TextFPageState();
}

class _TextFPageState extends State<TextFPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey,
              hintText: "Full Name",
              label: Text("Label"),
              prefixIcon: Icon(
                Icons.remove_red_eye,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
