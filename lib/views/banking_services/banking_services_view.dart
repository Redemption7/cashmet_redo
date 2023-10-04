import 'package:cashmet_redo/constants/routes.dart';
import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/option_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:line_icons/line_icons.dart';

class BankingServiceView extends StatelessWidget {
  const BankingServiceView({super.key});

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
          title: PlatformText("Banking Services", style: TextStyle(color: goldishColor),),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: PlatformText("Choose Service",
               style: TextStyle(
                fontSize: 18,
                color: tileTextColor
               ),
               ),
             ),
              OptionCard(
                cardTitle: "Bank to Wallet",
                cupertinoLeadingIcon: CupertinoIcons.money_dollar_circle_fill,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                materialLeadingIcon: Icons.monetization_on_rounded,
                onTap: () {
                  Navigator.pushNamed(context, CashMetRoutes.bankToWallet);
                },
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.money_dollar_circle_fill,
                materialLeadingIcon: Icons.monetization_on_rounded,
                cardTitle: "Wallet to Bank" ,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: () {
                  Navigator.pushNamed(context, CashMetRoutes.walletToBank);
                },
              ),
              OptionCard(
                cupertinoLeadingIcon: LineIcons.whatSApp,
                materialLeadingIcon: LineIcons.whatSApp,
                cardTitle:  "WhatsApp Banking",
                cupertinoTrailingIcon: CupertinoIcons.arrow_right ,
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