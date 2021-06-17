import 'package:first_project/app-controller.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'loginPage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primarySwatch: Colors.blue,
              brightness: AppController.instance.dartTheme
                  ? Brightness.dark
                  : Brightness.light),
          home: LoginPage(),
        );
      },
    );
  }
}
