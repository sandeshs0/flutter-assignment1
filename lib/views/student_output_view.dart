import 'package:first_flutter/core/common/student_list_view.dart';
import 'package:first_flutter/model/student.dart';
import 'package:flutter/material.dart';


class StudentOutputView extends StatefulWidget {
  const StudentOutputView({super.key});

  @override
  State<StudentOutputView> createState() => _StudentOutputViewState();
}

class _StudentOutputViewState extends State<StudentOutputView> {
  List<Student> lstStudents = [];
  @override
  void didChangeDependencies() {
    lstStudents = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: lstStudents.isEmpty
          ? const Center(child: Text('Data chaina'))
          : StudentListView(
              lstStudents: lstStudents,
            ),
    );
  }
}