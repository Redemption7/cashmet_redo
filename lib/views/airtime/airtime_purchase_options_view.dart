import 'package:cashmet_redo/constants/routes.dart';
import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/option_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:line_icons/line_icons.dart';

class AirtimePurchaseOptions extends StatelessWidget {
  const AirtimePurchaseOptions({super.key});

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
          title: PlatformText("Purchase Airtime", style: TextStyle(color: goldishColor),),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: PlatformText("Choose Option",
               style: TextStyle(
                fontSize: 18,
                color: tileTextColor
               ),
               ),
             ),
              OptionCard(
                cardTitle: "Topup Self",
                cupertinoLeadingIcon: CupertinoIcons.device_phone_portrait,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                materialLeadingIcon: Icons.phone_android,
                onTap: () {
                  Navigator.pushNamed(context, CashMetRoutes.airtimeTopupSelf);
                },
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.device_phone_portrait,
                materialLeadingIcon: Icons.phone_android,
                cardTitle: "Topup Others" ,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: () {
                  Navigator.pushNamed(context, CashMetRoutes.airtimetopupOther);
                },
              ),
          
              
              
            ],
          ),
        ),
      ),
    );
  }
}