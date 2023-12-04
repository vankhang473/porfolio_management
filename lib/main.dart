import 'package:flutter/material.dart';
import 'package:porfolio_management/Common/colort_utils.dart';
import 'package:porfolio_management/Features/ExampleFeature/Screen/Login.dart';
import 'package:porfolio_management/router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:porfolio_management/Common/string_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
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
      locale: const Locale('en'),
      debugShowCheckedModeBanner: false,
      title: AppString.appTitle,
      theme: ThemeData(
        scaffoldBackgroundColor: cBackground,
        colorScheme: const ColorScheme.light(
          primary: cBackground,
        ),
      ),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LoginPage(),
      initialRoute: '/Test-route',
    );
  }
}
