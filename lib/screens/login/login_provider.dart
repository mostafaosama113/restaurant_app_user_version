import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/slide_to_right.dart';
import '../../widgets/show_error.dart';
import '../home/home_screen.dart';

class LoginProvider extends ChangeNotifier {
  bool isLoading = false;
  Future loginByEmail(context,
      {required TextEditingController email,
      required TextEditingController password}) async {
    if (email.text.isEmpty || password.text.isEmpty) {
      showError(context, 'All Fields are required');
      return;
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
        showError(context, 'Error');
        return;
      } else {
        isLoading = false;
        notifyListeners();
        Navigator.pushReplacement(
          context,
          SlideRight(
            screen: HomeScreen(),
          ),
        );
        return;
      }
    } on FirebaseAuthException catch (e) {
      isLoading = false;
      notifyListeners();
      showError(context, e.code.replaceAll('-', ' '));
      return;
    }
  }
}
