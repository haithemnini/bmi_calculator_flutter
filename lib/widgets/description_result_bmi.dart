import 'package:flutter/material.dart';

import 'calculate_BMI.dart';

class DescriptionResultBMI extends StatelessWidget {
  final CalculateBMI calculateBMI;

  const DescriptionResultBMI({
    super.key,
    required this.calculateBMI,
  });

  @override
  Widget build(BuildContext context) {
    String category =
        calculateBMI.getWeightCategory().toString().split('.').last;

    String categoryNameFirstLetter =
        category[0].toUpperCase() + category.substring(1);

    return Column(
      children: [
        Text(
          'Your BMI score is ',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 20,
              ),
        ),
        const SizedBox(height: 20),
        Text(
          calculateBMI.getBMI().toStringAsFixed(0),
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 120,
                color: calculateBMI.getTextColor(),
              ),
        ),
        Text(
          categoryNameFirstLetter,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 20,
                color: calculateBMI.getTextColor(),
              ),
        ),
        const SizedBox(height: 20),
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            text: 'That means your weight is in the',
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
            children: [
              TextSpan(
                text: ' $categoryNameFirstLetter Weight',
                style: const TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const TextSpan(text: ' category for adults of your height '),
            ],
          ),
        )
      ],
    );
  }
}
