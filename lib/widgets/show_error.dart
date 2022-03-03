import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../shared/colors.dart';

void showError(context, message) {
  Alert(
    context: context,
    type: AlertType.error,
    desc: message,
    style: AlertStyle(
      alertElevation: 0,
      overlayColor: Colors.black.withOpacity(.40),
      descStyle: TextStyle(fontSize: 12.sp),
      alertBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    buttons: [
      DialogButton(
        color: btnColor,
        height: 35.h,
        child: Text(
          "Try again",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14.sp,
          ),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120.w,
      )
    ],
  ).show();
}
