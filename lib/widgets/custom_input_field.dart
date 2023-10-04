import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../utils/colors.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.name,
    required this.headerTitle,
    this.errorMssge
    });
  final String name;
  final String headerTitle;
  final String? errorMssge;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(headerTitle, style: TextStyle(
              fontSize: 16,
              color: tileTextColor
            ),),
          ),
        ),
                FormBuilderTextField(
                name: name,
                 style: TextStyle(
                      color: tileTextColor
                    ),
                decoration:InputDecoration(
                  fillColor: tileTextColor,
                  // label: Text(label.toString(),
                  //   style: TextStyle(
                  //   color: tileTextColor
                  // ),),
                  border: const OutlineInputBorder(),
                   enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: tileTextColor), ),
                   focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: tileTextColor), ),
                ),
                cursorColor: goldishColor,
                keyboardType: TextInputType.number,
                validator: (val) {
                  if(val!.isEmpty){
                    return errorMssge;
                  }
                  return null;
                }),
      ],
    );
  }
}