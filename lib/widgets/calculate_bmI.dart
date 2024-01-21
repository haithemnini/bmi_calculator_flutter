import 'package:flutter/material.dart';

enum WeightCategory {
  thinness,
  normal,
  increase,
  obesity,
}

class CalculateBMI {
  final double height;
  final double weight;

  CalculateBMI({
    required this.height,
    required this.weight,
  }) {
    _calculateWeightCategoryAndTextColor();
  }

  Color _getColorForWeightCategory(WeightCategory category) {
    switch (category) {
      case WeightCategory.thinness:
        return const Color(0xff527bee);
      case WeightCategory.normal:
        return const Color(0xff28cc96);
      case WeightCategory.increase:
        return const Color(0xfff16834);
      case WeightCategory.obesity:
        return const Color(0xfffa514b);
      default:
        return Colors.black;
    }
  }

  WeightCategory _getWeightCategory() {
    double bmi = _calculateBMI();
    if (bmi < 18.5) {
      return WeightCategory.thinness;
    } else if (bmi < 25) {
      return WeightCategory.normal;
    } else if (bmi < 30) {
      return WeightCategory.increase;
    } else {
      return WeightCategory.obesity;
    }
  }

  WeightCategory _weightCategory = WeightCategory.thinness; // Initial value
  Color _textColor = Colors.blue; // Initial value

  void _calculateWeightCategoryAndTextColor() {
    _weightCategory = _getWeightCategory();
    _textColor = _getColorForWeightCategory(_weightCategory);
  }

  double _calculateBMI() => weight / (height * height);
  //
  double getBMI() => _calculateBMI();
  Color getTextColor() => _textColor;
  WeightCategory getWeightCategory() => _weightCategory;
}
