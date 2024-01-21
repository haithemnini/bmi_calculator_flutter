import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/buttons_material.dart';
import '../widgets/calculate_BMI.dart';
import '../widgets/cards_info_bmi.dart';
import '../widgets/description_result_bmi.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: ResultBody(),
    );
  }
}

class ResultBody extends StatelessWidget {
  const ResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    final CalculateBMI calculateBMI =
        ModalRoute.of(context)!.settings.arguments as CalculateBMI;

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            children: [
              DescriptionResultBMI(calculateBMI: calculateBMI),
              const Spacer(),
              const CardInfoBMI(),
              const Spacer(),
              buildButton(
                context: context,
                labelText: 'Try again',
                onClicked: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/welcomeScreen',
                  (route) => false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
