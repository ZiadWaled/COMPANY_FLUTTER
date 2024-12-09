import 'package:company_flutter/presentation/onboarding/view/onboarding_view.dart';
import 'package:company_flutter/resources/theme_manager.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(MyApp());
}

@immutable
class MyApp extends StatelessWidget {
  MyApp._internal(); // named constructor

  int? appState = 0;

  static final MyApp _instance =
      MyApp._internal(); // single instance or singleton

  factory MyApp() =>
      _instance; 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      home: const OnBoardingPage(),
    );
  }
}
