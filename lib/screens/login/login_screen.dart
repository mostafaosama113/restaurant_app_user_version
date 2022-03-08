import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/screens/home/home_screen.dart';
import 'package:restaurant_app/screens/login/login_provider.dart';
import 'package:restaurant_app/shared/slide_to_right.dart';
import 'package:restaurant_app/widgets/custom_icon_button.dart';
import 'package:restaurant_app/widgets/progress_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant_app/widgets/separator.dart';

import '../../widgets/input_field.dart';
import '../../widgets/r_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      builder: (context, child) => Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Consumer<LoginProvider>(
            builder: (context, model, child) => Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Hello Again!',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Text(
                      'Welcome back you\'ve\n been missed!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    InputField(
                      hint: 'Enter email address',
                      controller: usernameController,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    InputField(
                      hint: 'Enter Password',
                      controller: passwordController,
                      isPass: true,
                    ),
                    SizedBox(height: 20.h),
                    RButton(
                      title: 'Sign in',
                      onClick: () => model.loginByEmail(
                        context,
                        email: usernameController,
                        password: passwordController,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotatedBox(
                          quarterTurns: 2,
                          child: getSeparator(),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Text(
                            'Or continue with',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12.sp),
                          ),
                        ),
                        getSeparator(),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          icon: FontAwesomeIcons.google,
                          color: Colors.red,
                          onClick: () {},
                        ),
                        CustomIconButton(
                          icon: FontAwesomeIcons.twitter,
                          onClick: () {},
                          color: Colors.blue,
                        ),
                        CustomIconButton(
                          icon: FontAwesomeIcons.facebook,
                          onClick: () {},
                          color: Colors.blueAccent,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Not a memeber?  ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                        InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          child: Text(
                            'Register now',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blueAccent,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                if (model.isLoading) progressWidget(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
