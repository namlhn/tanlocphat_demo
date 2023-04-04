import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tamlocphat_app/screens/dashboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.topLevel,
      transitionDuration: const Duration(milliseconds: 500),
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: const Color(0xFF5EB04E),
        secondaryHeaderColor: const Color(0xFFf7f7f7),
        disabledColor: const Color(0xFFBABFC4),
        backgroundColor: const Color(0xFFf7f7f7),
        errorColor: const Color(0xFFE84D4F),
        brightness: Brightness.light,
        hintColor: const Color(0xFF9F9F9F),
      ),
      home: const DashboardScreen(),
    );
  }
}
