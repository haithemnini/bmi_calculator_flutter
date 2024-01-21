import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/constants.dart';

const appTextTheme = TextTheme(
  bodyLarge: TextStyle(
    height: 0,
    fontFamily: 'Trujillo',
    color: kSecondaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 60,
  ),
  bodySmall: TextStyle(
    height: 0,
    fontFamily: 'Trujillo',
    color: kSecondaryColor,
    fontWeight: FontWeight.w700,
    fontSize: 20,
  ),
  bodyMedium: TextStyle(
    fontFamily: 'Trujillo',
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 18,
  ),
  displayMedium: TextStyle(
    fontFamily: 'Trujillo',
    color: kSecondaryColor,
    fontWeight: FontWeight.w500,
    fontSize: 25,
  ),
);

void edgeToEdge(Color color) {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(systemNavigationBarColor: color),
  );
}
