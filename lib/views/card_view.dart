import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View Flutter'),
      ),
      body:SafeArea(
        
        child: SizedBox(
          height: 500,
          width: double.infinity,
        child: Column(
          children: [
            Card(
              color: const Color.fromARGB(255, 244, 216, 130),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Center(child: Text("Hey I'm in a card bro")),
            ),
            myCard(),
          ],
        ),
        
      )
    ));
  }
}

class myCard extends StatelessWidget {
  const myCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 244, 216, 130),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: const Center(child: Text("Hey I'm in a card bro")),
    );
  }
}