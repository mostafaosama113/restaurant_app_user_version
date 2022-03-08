import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restaurant_app/widgets/progress_widget.dart';

import 'home_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                child: Column(),
              ),
            ),
            if (model.isLoading) progressWidget(context),
          ],
        ),
      ),
    );
  }
}
