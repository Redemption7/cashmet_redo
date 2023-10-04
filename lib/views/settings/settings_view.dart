import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/option_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PlatformScaffold(
        backgroundColor: mainColor,
        appBar: PlatformAppBar(
          leading: PlatformIconButton(
          color: goldishColor,
          cupertinoIcon:  IconButton(
            icon: Icon(CupertinoIcons.arrow_right_to_line, color: goldishColor,),
            onPressed: () {
              Navigator.pop(context);
            },) ,
          materialIcon:  IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
           icon: Icon(Icons.arrow_back,
            color: goldishColor,)),),
          automaticallyImplyLeading: false,
          backgroundColor: mainColor,
          title: PlatformText("Settings", style: TextStyle(color: goldishColor),),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            
              OptionCard(
                cardTitle: "Account Settings",
                cupertinoLeadingIcon: CupertinoIcons.person_alt_circle,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                materialLeadingIcon: Icons.person_outline_rounded,
                onTap: () {},
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.creditcard,
                materialLeadingIcon: Icons.credit_card,
                cardTitle: "Card settings" ,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: () {},
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.slider_horizontal_3,
                materialLeadingIcon: Icons.tune ,
                cardTitle:  "Others Settings",
                cupertinoTrailingIcon: CupertinoIcons.arrow_right ,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: () {},
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.info_circle_fill,
                materialLeadingIcon: Icons.receipt_long,
                cardTitle: "About Us",
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: () {},
              ),
             
              
            ],
          ),
        ),
      ),
    );
  }
}