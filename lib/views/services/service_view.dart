import 'package:cashmet_redo/constants/routes.dart';
import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/option_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
class ServiceView extends StatelessWidget {
  const ServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
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
          title: PlatformText("Services", style: TextStyle(color: goldishColor),),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: PlatformText("Explore Services",
               style: TextStyle(
                fontSize: 18,
                color: tileTextColor
               ),
               ),
             ),
              OptionCard(
                cardTitle: "Send Money",
                cupertinoLeadingIcon: CupertinoIcons.money_dollar_circle_fill,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                materialLeadingIcon: Icons.monetization_on_rounded,
                onTap: () {
                  Navigator.pushNamed(context, CashMetRoutes.sendMoney);
                },
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.device_phone_portrait,
                materialLeadingIcon: Icons.phone_android,
                cardTitle: "Airtime" ,
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: (){
                  Navigator.pushNamed(context, CashMetRoutes.airtimePurchaseOptionsView);
                },
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.person_3,
                materialLeadingIcon: Icons.person_3 ,
                cardTitle:  "Pay Merchant",
                cupertinoTrailingIcon: CupertinoIcons.arrow_right ,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: () {
                 showModalBottomSheet(
                  backgroundColor: mainColor,
                  context: context,
                  builder: (context) {
                    return Card
                    (color: mainColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              30,
                            )
                          ),
                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                ListTile(
                                  //leading: new Icon(Icons.photo),
                                  title: new Text('Use Merchant Code'),
                                  trailing: Icon(Icons.arrow_right),
                                   
                                  onTap: () {
                                    Navigator.pushNamed(context, CashMetRoutes.payMerchant);
                                  },
                                ),
                               
                                ListTile(
                                  title: new Text('Scan to pay'),
                                  trailing: IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.arrow_right)),
                                  onTap: () {
                                    Navigator.pushNamed(context, CashMetRoutes.scanToPay);
                                  },
                                ),
                               
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
                },
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.doc_plaintext,
                materialLeadingIcon: Icons.receipt_long,
                cardTitle: "Bill Payment",
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: (){
                  Navigator.pushNamed(context, CashMetRoutes.billPayments);
                },
              ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.money_dollar_circle_fill,
                 materialLeadingIcon: Icons.monetization_on_rounded,
                 cardTitle: "ZIPIT",
                 cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                 materialTrailingIcon: Icons.arrow_forward_ios,
                 onTap: (){
                  Navigator.pushNamed(context, CashMetRoutes.zipit);
                 },
                 ),
              OptionCard(
                cupertinoLeadingIcon: CupertinoIcons.news,
                materialLeadingIcon: Icons.list_alt_sharp,
                cardTitle: "Mini Statement",
                cupertinoTrailingIcon: CupertinoIcons.arrow_right,
                materialTrailingIcon: Icons.arrow_forward_ios,
                onTap: () {},
                )
              
            ],
          ),
        ),
      ),
    );
  }
}