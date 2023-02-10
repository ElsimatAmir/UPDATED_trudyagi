import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testapp/routes/router.gr.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      //home: const userMainPage(),
      title: 'трудяги.рф',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
    );
  }
}
