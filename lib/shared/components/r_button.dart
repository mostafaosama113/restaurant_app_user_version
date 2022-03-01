import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/shared/colors.dart';
import 'package:restaurant_app/shared/constants.dart';

class RButton extends StatelessWidget {
  const RButton({
    Key? key,
    required this.title,
    this.bgColor = btnColor,
    required this.onClick,
  }) : super(key: key);
  final String title;
  final Color bgColor;
  final Function onClick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: InkWell(
        onTap: () => onClick(),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: btnColor.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(10.r),
            color: bgColor,
          ),
          child: SizedBox(
            width: double.infinity,
            height: 60.h,
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
