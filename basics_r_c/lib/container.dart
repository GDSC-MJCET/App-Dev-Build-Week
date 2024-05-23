import 'package:flutter/material.dart';

class ContainerPage extends StatefulWidget {
  const ContainerPage({super.key});

  @override
  State<ContainerPage> createState() => _ContainerPageState();
}

class _ContainerPageState extends State<ContainerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey,
            boxShadow: const [
              BoxShadow(
                blurRadius: 50,
                color: Colors.green,
                offset: Offset(0, 0),
                spreadRadius: 20,
              )
            ],
          ),
          child: Image.asset('assets/omnitrix.png'),
        ),
      ),
    );
  }
}
