import 'package:flutter/material.dart';

import '../utils/constants.dart';

class WidgetTextEdituer extends StatelessWidget {
  final String lable;
  final String hintText;
  final TextEditingController controller;
  final Function()? onEditingComplete;

  const WidgetTextEdituer({
    super.key,
    required this.lable,
    required this.controller,
    required this.hintText,
    required this.onEditingComplete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
      child: Row(
        children: [
          Text(
            lable,
            style: Theme.of(context)
                .textTheme
                .displayMedium!
                .copyWith(fontSize: 17),
          ),
          const SizedBox(width: kDefaultPadding * 1.5),
          Flexible(
            child: TextFormField(
              onEditingComplete: onEditingComplete,
              controller: controller,
              validator: (value) =>
                  value != null && controller.text == '' ? 'Enter Value' : null,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color(0xfff0f4f9),
                hintText: hintText,
                hintStyle: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(fontSize: 17),
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide(
                    color: Colors.grey.shade600,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.5,
                  ),
                ),
                focusedErrorBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontSize: 15,
                      color: Colors.red,
                    ),
              ),
              style: Theme.of(context)
                  .textTheme
                  .displayMedium!
                  .copyWith(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
