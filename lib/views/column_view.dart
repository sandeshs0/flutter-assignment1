import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           ElevatedButton(
              onPressed: () {
                // logic
              },
              child: const Text('Ramesh'),
            ),
            ElevatedButton(onPressed: (){
              // logic
            }, child: const Text("Suresh")),
            const Spacer(),
            ElevatedButton(onPressed: (){
              // logic
            }, child: const Text("Suresh")),
          ],
        ),
      ),
    );
  }
}