import 'package:cashmet_redo/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
  required this.btnName,
  this.isloading = false,
  required this.onTap});
  final String btnName;
  final bool isloading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: goldishColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child:isloading? const CircularProgressIndicator() :Text(btnName) ,
        ),
      ),
    );
  }
}