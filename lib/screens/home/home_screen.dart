import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../../widgets/buttons_material.dart';
import '../../widgets/calculate_BMI.dart';
import '../../widgets/gender_selection.dart';
import '../../widgets/widget_text_edituer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: kPrimaryColor,
        title: Text(
          'BMI Calculator',
          style: Theme.of(context).textTheme.displayMedium,
        ),
        iconTheme: const IconThemeData(color: kSecondaryColor),
      ),
      backgroundColor: kPrimaryColor,
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool isMale = false;
  bool isWoman = false;
  String imageGender = '';
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    isMale = true;
    isWoman = false;
    imageGender = 'assets/images/man2.png';
    heightController.text = '170';
    weightController.text = '60';
    super.initState();
  }

  @override
  void dispose() {
    isMale = false;
    isWoman = false;
    imageGender = '';
    heightController.clear();
    weightController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(children: [
              GenderSelection(
                isMale: isMale,
                isWoman: isWoman,
                onMaleTap: () {
                  setState(() {
                    isMale = true;
                    isWoman = false;
                    imageGender = 'assets/images/man2.png';
                  });
                },
                onWomanTap: () {
                  setState(() {
                    isMale = false;
                    isWoman = true;
                    imageGender = 'assets/images/woman2.png';
                  });
                },
                onChild: Image.asset(imageGender, height: 300),
              ),
              const SizedBox(height: kDefaultPadding * 3.5),
              WidgetTextEdituer(
                lable: 'Weight',
                hintText: '',
                controller: weightController,
                onEditingComplete: () {
                  setState(() {
                    weightController.text = weightController.text;
                  });
                },
              ),
              WidgetTextEdituer(
                lable: 'Height',
                hintText: '',
                controller: heightController,
                onEditingComplete: () {
                  setState(() {
                    setState(() {
                      heightController.text = heightController.text;
                    });
                  });
                },
              ),
              const SizedBox(height: kDefaultPadding * 1.5),
              buildButton(
                context: context,
                labelText: 'Calculate',
                onClicked: () {
                  final form = _formKey.currentState!;

                  if (form.validate()) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/resultScreen',
                      (route) => false,
                      arguments: CalculateBMI(
                        height: double.parse(heightController.text) / 100,
                        weight: double.parse(weightController.text),
                      ),
                    );
                  }
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
