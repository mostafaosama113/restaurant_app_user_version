import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restaurant_app/screens/home/home_screen.dart';
import 'package:restaurant_app/screens/login/login_screen.dart';
import 'package:restaurant_app/shared/colors.dart';
import 'package:restaurant_app/shared/slide_to_right.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double h = 1;
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        setState(
          () {
            h = -1;
          },
        );
      },
    );
    // Future.delayed(const Duration(seconds: 3), () {
    //   final User? user = FirebaseAuth.instance.currentUser;
    //   if (user == null) {
    //     Navigator.pushReplacement(
    //       context,
    //       SlideRight(
    //         screen: const LoginScreen(),
    //       ),
    //     );
    //   } else {
    //     Navigator.pushReplacement(
    //       context,
    //       SlideRight(
    //         screen: const HomeScreen(),
    //       ),
    //     );
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: btnColor,
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: btnColor,
      ),
      body: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: 400.h,
          ),
          SizedBox(height: 40.h),
          Expanded(
            child: AnimatedContainer(
              curve: Curves.easeInOut,
              duration: const Duration(milliseconds: 500),
              alignment: Alignment(0, h),
              child: Text(
                'Restaurant',
                style: GoogleFonts.lobster(
                  fontSize: 50.sp,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
      backgroundColor: btnColor,
    );
  }
}
