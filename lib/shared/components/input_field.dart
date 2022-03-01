import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/shared/constants.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.hint,
    required this.controller,
    this.isPass = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);
  final String hint;
  final bool isPass;
  final TextEditingController controller;
  final TextInputType keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,
      child: TextField(
        keyboardType: keyboardType,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 30.w,
            vertical: 20.h,
          ),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10.r),
          ),
          hintText: hint,
        ),
        style: const TextStyle(),
        obscureText: isPass,
      ),
    );
  }
}
