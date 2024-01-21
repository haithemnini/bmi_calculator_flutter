import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/constants.dart';

class GenderSelection extends StatelessWidget {
  final bool isMale;
  final bool isWoman;
  final VoidCallback onMaleTap;
  final VoidCallback onWomanTap;
  final Widget onChild;

  const GenderSelection({
    super.key,
    required this.isMale,
    required this.isWoman,
    required this.onMaleTap,
    required this.onWomanTap,
    required this.onChild,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onMaleTap,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isMale ? Colors.white : null,
              boxShadow: [
                isMale
                    ? BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1.0,
                        spreadRadius: 2.0,
                      )
                    : const BoxShadow(color: kPrimaryColor),
              ],
            ),
            child: SvgPicture.asset('assets/images/male.svg'),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 400,
            child: onChild,
          ),
        ),
        GestureDetector(
          onTap: onWomanTap,
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isWoman ? Colors.white : null,
              boxShadow: [
                isWoman
                    ? BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1.0,
                        spreadRadius: 2.0,
                      )
                    : const BoxShadow(color: kPrimaryColor),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: SvgPicture.asset(
                'assets/images/female.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
