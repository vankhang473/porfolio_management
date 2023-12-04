import 'package:flutter/material.dart';
import 'package:porfolio_management/Common/device_utils.dart';
import 'package:porfolio_management/Common/widget_utils.dart';

class WarningDialog extends StatefulWidget {
  final String title;
  final String message;
  const WarningDialog(this.title, this.message, {Key? key}) : super(key: key);

  @override
  State<WarningDialog> createState() => _WarningDialogState();
}

class _WarningDialogState extends State<WarningDialog> {
  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    FetchPixels(context);
    return WillPopScope(
      onWillPop: _onWillPop,
      child: AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(FetchPixels.getPixelHeight(20))),
        content: Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                getVerSpace(FetchPixels.getPixelHeight(20)),
                getVerSpace(FetchPixels.getPixelHeight(10)),
                getMultilineCustomFont(widget.message, 16, Colors.black,
                    fontWeight: FontWeight.w400,
                    txtHeight: 1.3,
                    textAlign: TextAlign.center),
                getVerSpace(FetchPixels.getPixelHeight(30)),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Close"),
                ),
                getVerSpace(FetchPixels.getPixelHeight(10)),
              ],
            );
          },
        ),
      ),
    );
  }
}
