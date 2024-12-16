import 'package:first_flutter/common/my_data_table.dart';
import 'package:first_flutter/common/show_logout_view.dart';
import 'package:flutter/material.dart';

class DatatableView extends StatelessWidget {
  const DatatableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: MyDataTable()),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    showLogoutDialog(context, () {
                    });
                  },
                  child: const Text('Logout'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}