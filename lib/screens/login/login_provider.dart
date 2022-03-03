import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginProvider extends ChangeNotifier {
  bool isLoading = false;
  Future<bool> loginByEmail(context,
      {required TextEditingController email,
      required TextEditingController password}) async {
    if (email.text.isEmpty || password.text.isEmpty) {
      showError(context, 'All Fields are required');
      return false;
    }
    FocusManager.instance.primaryFocus?.unfocus();
    isLoading = true;
    notifyListeners();
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.text,
        password: password.text,
      );
      if (userCredential.user == null) {
        isLoading = false;
        notifyListeners();
        return false;
      } else {
        isLoading = false;
        notifyListeners();
        showError(context, 'Error');
        return true;
      }
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      notifyListeners();
      showError(context, e.code.replaceAll('-', ' '));
      return false;
    }
  }
}

void showError(context, message) {
  Alert(
    context: context,
    type: AlertType.error,
    desc: message,
    buttons: [
      DialogButton(
        child: Text(
          "Try again",
          style: TextStyle(color: Colors.white, fontSize: 20.sp),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120.w,
      )
    ],
  ).show();
}
