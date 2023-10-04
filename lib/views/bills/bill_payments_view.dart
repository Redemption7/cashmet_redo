import 'package:cashmet_redo/constants/routes.dart';
import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/custom_input_field.dart';
import 'package:cashmet_redo/widgets/option_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class BillPaymentsView extends StatefulWidget {
  const BillPaymentsView({super.key});

  @override
  State<BillPaymentsView> createState() => _BillPaymentsViewState();
}

class _BillPaymentsViewState extends State<BillPaymentsView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        forceMaterialTransparency: true,
        leading: PlatformIconButton(
          materialIcon: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back), color: goldishColor,),
        ),
        centerTitle: true,
        title: Text("Bill Payments",
        style: TextStyle(
          color: goldishColor
        ),
        ),
      ),
      body:Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInputField(name: "bill", headerTitle: "Payments"),
          ),
          OptionCard(
            cupertinoLeadingIcon: 
            CupertinoIcons.news,
            materialLeadingIcon: Icons.newspaper_outlined, 
            cardTitle: "Electricity",
            onTap: (){}),
            SizedBox(height: 10,),
             OptionCard(
            cupertinoLeadingIcon: 
            CupertinoIcons.news,
            materialLeadingIcon: Icons.newspaper_outlined, 
            cardTitle: "Internet Services",
            onTap: (){
              Navigator.pushNamed(context, CashMetRoutes.zolPayments); 
            }),
        ],
      ),
    );
  }
}