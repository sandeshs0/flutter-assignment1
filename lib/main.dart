import 'package:first_flutter/views/card_view.dart';
import 'package:first_flutter/views/student_output_view.dart';
import 'package:flutter/material.dart';

// final
// const

// HOT RELOAD

//We will use BloCk for state management

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
              debugShowCheckedModeBanner:false,
      routes: {
        // '/': (context) => const StudentDetailsView(),
        // '/': (context) => const ContainerScreen(),
        // '/': (context) => const ImageView(),
        '/': (context) => const CardView(),
        '/output': (context) => const StudentOutputView(),
      },
        // debugShowCheckedModeBanner:false

    ),
    
  );
}