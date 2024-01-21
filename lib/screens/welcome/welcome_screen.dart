import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/constants.dart';
import '../../widgets/buttons_material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: const WelcomeBody(),
    );
  }
}

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: kDefaultPadding),
            Text('BIM', style: Theme.of(context).textTheme.bodyLarge),
            Text('Calculator ', style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: kDefaultPadding * 0.1),
            SvgPicture.asset('assets/images/speed_v2.svg', width: 200),
            const Spacer(),
            buildButton(
              context: context,
              labelText: 'START ',
              onClicked: () => Navigator.of(context).pushNamed('/homeScreen'),
            ),
            const SizedBox(height: kDefaultPadding),
          ],
        ),
      ),
    );
  }
}
