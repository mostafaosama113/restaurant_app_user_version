import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:restaurant_app/screens/login/login_screen.dart';
import 'package:restaurant_app/shared/slide_to_right.dart';

class HomeProvider extends ChangeNotifier {
  bool isLoading = false;
  void signOut(context) {
    isLoading = true;
    notifyListeners();
    FirebaseAuth.instance.signOut().then((value) {
      isLoading = false;
      notifyListeners();
      Navigator.pushReplacement(
        context,
        SlideRight(screen: const LoginScreen()),
      );
    });
  }
}
