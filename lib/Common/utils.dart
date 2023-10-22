import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        textAlign: TextAlign.center,
      ),
    ),
  );
}

String parseDate(date) {
  if (date == null) {
    return '--:--\n--/--/----';
  }
  DateTime dt1 = DateTime.parse(date);
  DateTime dt2 = dt1.add(const Duration(hours: 7));
  String hour = dt2.hour.toString();
  String minute = dt2.minute.toString();
  if (dt2.hour < 10) {
    hour = '0$hour';
  }
  if (dt2.minute < 10) {
    minute = '0$minute';
  }
  return '$hour:$minute, ${dt2.day}/${dt2.month}/${dt2.year}';
}

String parseDateNoUTC(date) {
  if (date == null) {
    return '--:--\n--/--/----';
  }
  DateTime dt1 = DateTime.parse(date);
  String hour = dt1.hour.toString();
  String minute = dt1.minute.toString();
  if (dt1.hour < 10) {
    hour = '0$hour';
  }
  if (dt1.minute < 10) {
    minute = '0$minute';
  }
  return '$hour:$minute, ${dt1.day}/${dt1.month}/${dt1.year}';
}

int parseDayToInt(date) {
  if (date == null) {
    return 0;
  }
  DateTime dt1 = DateTime.parse(date);
  String day = dt1.day.toString();
  if (day.length == 1) {
    day = '0$day';
  }
  String month = dt1.month.toString();

  String result = month + day;
  return int.parse(result);
}

String convertMoney(int? price) {
  String converted = price.toString().replaceAllMapped(
      RegExp(r"(?<=\d)(?=(\d\d\d)+(?!\d))"), (match) => "${match.group(0)}.");
  return converted;
}

class Utils {
  static String assetImagePath = "";
  static String networkImagePath = "";
  static bool isDriverApp = false;
  static const String fontsFamily = "Lato";
  static const String fromLogin = "getFromLoginClick";
  static const String homePos = "getTabPos";
  static const int stepStatusNone = 0;
  static const int stepStatusActive = 1;
  static const int stepStatusDone = 2;
  static const int stepStatusWrong = 3;

  static sendToNextWithRes(BuildContext context, String route,
      {Object? arguments, Function? fun}) {
    if (arguments != null) {
      Navigator.pushNamed(context, route, arguments: arguments).then((value) {
        if (fun != null) {
          fun();
        }
      });
    } else {
      Navigator.pushNamed(context, route).then((value) {
        if (fun != null) {
          fun();
        }
      });
    }
  }

  static double getPercentSize(double total, double percent) {
    return (percent * total) / 100;
  }

  static backToPrev(BuildContext context) {
    Navigator.of(context).pop();
  }

  static backToPrevAfterDelete(BuildContext context, bool bool) {
    Navigator.of(context).pop(bool);
  }

  static getCurrency(BuildContext context) {
    return "ETH";
  }

  static sendToNext(BuildContext context, String route, {Object? arguments}) {
    if (arguments != null) {
      Navigator.pushNamed(context, route, arguments: arguments);
    } else {
      Navigator.pushNamed(context, route);
    }
  }

  static double getToolbarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top + kToolbarHeight;
  }

  static double getToolbarTopHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static sendToScreen(Widget widget, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => widget,
    ));
  }

  static backToFinish(BuildContext context) {
    Navigator.of(context).pop();
  }

  static closeApp() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    });
  }
}
