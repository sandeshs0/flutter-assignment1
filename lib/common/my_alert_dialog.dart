import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context, Student student, Function onDelete) {
  AlertDialog alert = AlertDialog(
    title: const Text("Delete ?"),
    content: Text("Are you sure you want to delete ${student.fname} ??"),
    actions: [
      TextButton(
        child: const Text("No"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      TextButton(
        child: const Text("Yes"),
        onPressed: () {
          onDelete();
          Navigator.pop(context);
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class Student {
  final String fname;

  Student(this.fname);
}