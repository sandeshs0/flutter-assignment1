import 'package:first_flutter/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class SnackBarView extends StatefulWidget {
  const SnackBarView({super.key});

  @override
  State<SnackBarView> createState() => _SnackBarViewState();
}

class _SnackBarViewState extends State<SnackBarView> {




  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Snack Bar"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
       ElevatedButton(onPressed: ()=>showMySnackBar(context: context,message:"From Button 1" ), child: const Text("Button 1")),
       ElevatedButton(onPressed: ()=>showMySnackBar(context: context,message:"Button 2",color: Colors.red ), child: const Text("Button 2"))
       
       ],
      ),
    );
 
  }
}