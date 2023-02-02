// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/auth/loginPage.dart' as _i1;
import '../pages/auth/signInPage.dart' as _i2;
import '../pages/loading/LoadingPage.dart' as _i4;
import '../pages/user/userMainPage.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    SignInPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    UserMainPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.userMainPage(),
      );
    },
    LoadingPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LoadingPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SignInPageRoute.name,
          path: '/Signin',
        ),
        _i5.RouteConfig(
          UserMainPageRoute.name,
          path: '/userMainScreen',
        ),
        _i5.RouteConfig(
          LoadingPageRoute.name,
          path: '/loading',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i5.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i5.PageRouteInfo<void> {
  const SignInPageRoute()
      : super(
          SignInPageRoute.name,
          path: '/Signin',
        );

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.userMainPage]
class UserMainPageRoute extends _i5.PageRouteInfo<void> {
  const UserMainPageRoute()
      : super(
          UserMainPageRoute.name,
          path: '/userMainScreen',
        );

  static const String name = 'UserMainPageRoute';
}

/// generated route for
/// [_i4.LoadingPage]
class LoadingPageRoute extends _i5.PageRouteInfo<void> {
  const LoadingPageRoute()
      : super(
          LoadingPageRoute.name,
          path: '/loading',
        );

  static const String name = 'LoadingPageRoute';
}
