import 'package:flutter/material.dart';

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleState();
}

class _AreaCircleState extends State<AreaCircle> {
  double radius = 0;
  double pi = 3.14;
  double area = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area Of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                radius = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter radius ',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('area : $area',
                style: const TextStyle(
                  fontSize: 20,
                )),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // State lai change gara
                  // buil method ma feri jau ani refresh gara
                  setState(() {
                    area = radius * radius * pi;
                  });
                },
                child: const Text('Calculate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}