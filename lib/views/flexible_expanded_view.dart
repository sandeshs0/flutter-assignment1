import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image View"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              // height: 300,
              width: double.infinity,
              color: Colors.amber,
            ),
          ),
           Expanded(
            flex: 2,
            // fit: FlexFit.loose,
             child: Container(
              // height: 200,
              color: Colors.blue, // Fixed to a valid color
                       ),
           ),
        ],
      ),
    );
  }
}
