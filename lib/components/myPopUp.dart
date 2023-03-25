import 'package:flutter/material.dart';

class MyPopUp {
  Future<Widget?> success(BuildContext context, String msg) async {
    AlertDialog successDialog = AlertDialog(
      backgroundColor: const Color.fromARGB(135, 164, 164, 164),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.done,
            color: Colors.green,
          ),
          Text(
            'Successfully Done!',
            style: TextStyle(fontSize: 16, color: Colors.black),
          )
        ],
      ),
      content: Text(
        msg,
        style: const TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
    await showDialog(
        context: context,
        builder: (BuildContext bContext) {
          return successDialog;
        });
    return null;
  }
}
