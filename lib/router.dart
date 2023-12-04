import 'package:flutter/material.dart';
import 'package:porfolio_management/Common/string_utils.dart';
import 'package:porfolio_management/Features/ExampleFeature/Screen/Login.dart';
import 'package:porfolio_management/main.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const LoginPage(),
      );
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text(AppString.screenErrorNotify),
                ),
              ));
  }
}
