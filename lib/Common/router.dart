import 'package:flutter/material.dart';
import 'package:porfolio_management/Common/string_utils.dart';
import 'package:porfolio_management/main.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case MyApp.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const MyApp(),
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
