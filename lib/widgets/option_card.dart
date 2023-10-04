import 'package:cashmet_redo/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class OptionCard extends StatelessWidget {
  OptionCard({super.key,
 required this.cupertinoLeadingIcon,
  required this.materialLeadingIcon,
  required this.cardTitle,
  this.cupertinoTrailingIcon,
  this.materialTrailingIcon,
  required this.onTap,
  });
  final IconData cupertinoLeadingIcon; 
  final IconData materialLeadingIcon;
  final String cardTitle;
  final IconData? cupertinoTrailingIcon;
  final IconData? materialTrailingIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: homeBgColor,
        child: ListTile(
          onTap: onTap,
        leading: PlatformWidget(
          cupertino: (context, platform) =>  Icon(cupertinoLeadingIcon, color: tileTextColor,),
          material: (context, platform) =>  Icon(materialLeadingIcon, color: tileTextColor,),
        ),
        title: PlatformText(cardTitle, style: TextStyle(
          color: tileTextColor
        ),),
        trailing: PlatformWidget(
          cupertino: (context, platform) =>  Icon(cupertinoTrailingIcon, color: tileTextColor,),
          material: (context, platform) =>  Icon(materialTrailingIcon, color: tileTextColor,),
        )),
      ),
    );}}