import 'package:flutter/material.dart';
import 'package:testapp/constants/constants.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDarkColor,
      body: Container(
        alignment: Alignment.center,
        child: const CircularProgressIndicator(
          color: mainOrangeColor,
        ),
      ),
    );
  }
}
