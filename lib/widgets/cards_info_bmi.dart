import 'package:flutter/material.dart';

List<List<String>> _listDegreeBIM = [
  ['< 18.5', 'Underweight'],
  ['18.5 - 24.9', 'Healthy weight'],
  ['25.0 - 29.9', 'Overweight'],
  ['> 30.0', 'Obesity'],
];

class CardInfoBMI extends StatelessWidget {
  const CardInfoBMI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _listDegreeBIM
          .map(
            (degree) => ListTileDetailBMI(
              degreeBMI: degree[0],
              lableBMI: degree[1],
            ),
          )
          .toList(),
    );
  }
}

class ListTileDetailBMI extends StatelessWidget {
  final String degreeBMI;
  final String lableBMI;

  const ListTileDetailBMI({
    super.key,
    required this.degreeBMI,
    required this.lableBMI,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      ),
      child: ListTile(
        leading: Text(
          degreeBMI,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
        ),
        trailing: Text(
          lableBMI,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
        ),
      ),
    );
  }
}
