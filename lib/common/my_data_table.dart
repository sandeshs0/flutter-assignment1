import 'package:first_flutter/common/my_alert_dialog.dart';
import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DataTable(
        headingRowColor: MaterialStateColor.resolveWith(
          (states) => Colors.amber,
        ),
        columns: const [
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text(
                  'Name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text(
                  'Roll No',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Center(
                child: Text(
                  'Action',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
        rows: [
          DataRow(
            cells: [
              const DataCell(
                Center(child: Text('John')),
              ),
              const DataCell(
                Center(child: Text('12')),
              ),
              DataCell(
                Center(
                  child: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      showAlertDialog(
                        context,
                        Student('John'),
                        () {},
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          DataRow(
            cells: [
              const DataCell(
                Center(child: Text('Mary')),
              ),
              const DataCell(
                Center(child: Text('12')),
              ),
              DataCell(
                Center(
                  child: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      showAlertDialog(
                        context,
                        Student('Mary'),
                        () {},
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}