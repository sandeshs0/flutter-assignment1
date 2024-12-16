import 'package:flutter/material.dart';

class AreaCircle extends StatefulWidget {
  const AreaCircle({super.key});

  @override
  State<AreaCircle> createState() => _AreaCircleState();
}

class _AreaCircleState extends State<AreaCircle> {
  // Global Key
  final _formKey=GlobalKey<FormState>();

  //Controller for field
  final radiusController=TextEditingController();
  double area=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area Of Circle'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key:_formKey,
          child: Column(
            children: [
              TextFormField(
                controller: radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter radius ',
                ),
                validator: (value){
                  if(value==null || value.isEmpty){
                    return 'Please enter the radius';
                  }
                  return null;
                }
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
                    if(_formKey.currentState!.validate()){
                      setState(() {
                        area= 3.14 * int.parse(radiusController.text)* int.parse(radiusController.text);
                      });
                    }
                  },
                  child: const Text('Calculate'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}