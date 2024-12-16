import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Screen'),
      ),
      body: SafeArea(
        
        child: Container(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 168, 161, 46),
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 0, 255, 13),
                width: 5,
              )
            ),
            alignment: Alignment.center,
            child: const Text("Hi K cha khabar"),
          ),
        )
    )

    )

    ;
  }
  
}