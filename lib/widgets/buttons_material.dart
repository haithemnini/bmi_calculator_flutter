import 'package:flutter/material.dart';

import '../utils/constants.dart';

Widget buildButton({
  required BuildContext context,
  required String labelText,
  required VoidCallback onClicked,
}) {
  final size = MediaQuery.of(context).size;
  return MaterialButton(
    onPressed: onClicked,
    elevation: 0,
    height: 50,
    minWidth: size.width * 0.8,
    color: kSecondaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(
      labelText,
      style: Theme.of(context).textTheme.bodyMedium,
    ),
  );
}
