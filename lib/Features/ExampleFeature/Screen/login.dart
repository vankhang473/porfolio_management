import 'package:flutter/material.dart';
import 'package:porfolio_management/Common/utils.dart';
import 'package:porfolio_management/Features/ExampleFeature/Screen/warning_dialog.dart';

class LoginPage extends StatefulWidget {
  static const String routeName = '/login-page';
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Login page"),
            TextField(
              onEditingComplete: () => showDialog(
                  builder: (context) =>
                      WarningDialog("onEditingComplete", "onEditingComplete"),
                  context: context),
              onTapOutside: (event) => showDialog(
                  builder: (context) =>
                      WarningDialog("onTapOutside", "onTapOutside"),
                  context: context),
              onChanged: (value) => showDialog(
                  builder: (context) => WarningDialog("onChanged", "onChanged"),
                  context: context),
            )
          ],
        ),
      ),
    );
  }
}
