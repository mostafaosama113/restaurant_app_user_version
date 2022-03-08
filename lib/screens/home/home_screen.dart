import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/widgets/progress_widget.dart';

import 'home_provider.dart';

class HomeScreen extends StatelessWidget {
  late User user;
  HomeScreen({Key? key}) : super(key: key) {
    user = FirebaseAuth.instance.currentUser!;
  }
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      builder: (context, child) => Consumer<HomeProvider>(
        builder: (context, model, child) => Stack(
          children: [
            Scaffold(
              appBar: AppBar(),
              drawer: Drawer(
                child: SafeArea(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () => model.signOut(context),
                        child: const Text('Sign out'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (model.isLoading) progressWidget(context),
          ],
        ),
      ),
    );
  }
}
