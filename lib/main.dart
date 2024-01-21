import 'package:flutter/material.dart';
import 'config/config.dart';

import 'package:bmi_app/result/result_screen.dart';
import 'package:bmi_app/screens/home/home_screen.dart';
import 'package:bmi_app/screens/welcome/welcome_screen.dart';

void main() {
  runApp(const BIMApp());
}

class BIMApp extends StatelessWidget {
  const BIMApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIM App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade500),
        textTheme: appTextTheme,
        useMaterial3: true,
      ),
      initialRoute: '/welcomeScreen',
      routes: {
        '/welcomeScreen': (context) => const WelcomeScreen(),
        '/homeScreen': (context) => const HomeScreen(),
        '/resultScreen': (context) => const ResultScreen(),
      },
    );
  }
}
