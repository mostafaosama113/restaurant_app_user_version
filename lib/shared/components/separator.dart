import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

Widget getSeparator() {
  return Container(
    width: 100.w,
    height: 2.h,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Colors.black,
            backgroundColor,
          ],
          begin: FractionalOffset(0.0, 0.0),
          end: FractionalOffset(1.0, 0.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp),
    ),
  );
}
