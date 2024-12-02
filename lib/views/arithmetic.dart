import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // Creating a Global key
  final _formKey=GlobalKey<FormState>();

  // Controllers for text fields
  final firstController=TextEditingController(text: '10');
  final secondController=TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithemtic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                // onChanged: (value) {
                //   first = int.parse(value);
                // },
                controller: firstController, // Using the controller defined earlier
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First No',
                ),
                validator: (value) {
                  if(value==null || value.isEmpty){
                    return 'Please enter first no.';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                // onChanged: (value) {
                //   second = int.parse(value);
                // },
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
                validator: (value){
                  if(value== null || value.isEmpty){
                    return 'Please enter second number';
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 8,
              ),
              Text('Result : $result',
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
                    if(_formKey.currentState!.validate()){
                      setState(() {
                        result=int.parse(firstController.text)+int.parse(secondController.text);
                      });
                    }
                    
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      setState(() {
                        result=int.parse(firstController.text)-int.parse(secondController.text);
                      });
                    }
                  },
                  child: const Text('Subtraction'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}