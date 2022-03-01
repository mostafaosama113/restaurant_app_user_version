import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/shared/constants.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.onClick,
    this.color = Colors.blue,
  }) : super(key: key);
  final IconData icon;
  final Function onClick;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: InkWell(
        onTap: () => onClick(),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 3.w),
            borderRadius: BorderRadius.circular(10.r),
          ),
          width: 65.w,
          height: 65.h,
          child: Icon(
            icon,
            size: 30.h,
            color: color,
          ),
        ),
      ),
    );
  }
}
