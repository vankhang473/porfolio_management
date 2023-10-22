import 'package:shared_preferences/shared_preferences.dart';

class PrefData {
  static String prefName = "com.example.provider_porfolio_app";
  static String pnLoggedIn = "${prefName}isLoggedIn";

  static Future<SharedPreferences> getPrefInstance() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences;
  }

  static setLogIn(bool avail) async {
    SharedPreferences preferences = await getPrefInstance();
    preferences.setBool(pnLoggedIn, avail);
  }

  static Future<bool> isLogIn() async {
    SharedPreferences preferences = await getPrefInstance();
    bool isLoggedIn = preferences.getBool(pnLoggedIn) ?? false;
    return isLoggedIn;
  }
}
