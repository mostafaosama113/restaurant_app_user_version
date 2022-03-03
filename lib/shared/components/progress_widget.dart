import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/shared/colors.dart';

Widget progressWidget(context) {
  return Container(
    color: Colors.transparent,
    height: MediaQuery.of(context).size.height,
    child: Center(
      child: Container(
        width: 100.h,
        height: 100.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: CircularProgressIndicator(
            color: btnColor,
          ),
        ),
      ),
    ),
  );
}
