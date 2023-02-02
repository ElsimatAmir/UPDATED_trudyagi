import 'package:flutter/material.dart';
import 'package:testapp/constants/constants.dart';
import 'package:lottie/lottie.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainDarkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Lottie.asset(
                "lotties/loadHammer.json",
                width: 50,
                height: 50,
              ),
            ),
          )
        ],
      ),
    );
  }
}
