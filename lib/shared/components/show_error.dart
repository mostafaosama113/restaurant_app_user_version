import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../colors.dart';

void showError(context, message) {
  Alert(
    context: context,
    type: AlertType.error,
    desc: message,
    buttons: [
      DialogButton(
        color: btnColor,
        child: Text(
          "Try again",
          style: TextStyle(color: Colors.white, fontSize: 18.sp),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120.w,
      )
    ],
  ).show();
}
