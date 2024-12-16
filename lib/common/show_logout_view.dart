import 'package:flutter/material.dart';

void showLogoutDialog(BuildContext context, Function onLogout) {
  AlertDialog logoutDialog = AlertDialog(
    title: const Text("Logout"),
    content: const Text("Are you sure you want to logout?"),
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
          onLogout();
          Navigator.pop(context);
        },
      ),
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return logoutDialog;
    },
  );
}