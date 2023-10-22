import 'package:flutter/material.dart';
import 'package:porfolio_management/Common/colort_utils.dart';
import 'package:porfolio_management/Common/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:porfolio_management/Common/string_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static const String routeName = '/my-app';
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => AppState();
}

class AppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      locale: const Locale('vi'),
      debugShowCheckedModeBanner: false,
      title: AppString.appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: cBackground,
        colorScheme: const ColorScheme.light(
          primary: cBackground,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: Container(),
      //initialRoute: '/login-screen',
    );
  }
}
