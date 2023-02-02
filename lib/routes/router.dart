// here is the list of all the routes that we have n the app
import 'package:auto_route/annotations.dart';
import 'package:testapp/pages/auth/loginPage.dart';
import 'package:testapp/pages/auth/signInPage.dart';
import 'package:testapp/pages/loading/LoadingPage.dart';
import 'package:testapp/pages/user/userMainPage.dart';

const List<AutoRoute<dynamic>> routes = [
  AutoRoute(
    path: "/",
    page: LoginPage,
    initial: true,
  ),
  AutoRoute(
    path: "/Signin",
    page: SignInPage,
  ),
  AutoRoute(
    path: "/userMainScreen",
    page: userMainPage,
  ),
  AutoRoute(
    path: "/loading",
    page: LoadingPage,
  ),
];

@MaterialAutoRouter(routes: routes)
class $AppRouter {}
