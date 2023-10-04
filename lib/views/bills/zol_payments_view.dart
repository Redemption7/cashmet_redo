import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/custom_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../constants/currency_codes.dart';
import '../../widgets/custom_button.dart';

class ZolPaymentsView extends StatefulWidget {
  const ZolPaymentsView({super.key});

  @override
  State<ZolPaymentsView> createState() => _ZolPaymentsViewState();
}

class _ZolPaymentsViewState extends State<ZolPaymentsView> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
        centerTitle: true,
        forceMaterialTransparency: true,
        backgroundColor: mainColor,
        title: Text("Zol Payments",
        style: TextStyle(
          color: goldishColor
        ),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FormBuilder(
              key: _formKey,
              child: Column(
              children: [
                FormBuilderDropdown(
                    name: "currency", 
                    iconEnabledColor: tileTextColor,
                    dropdownColor: Colors.grey,
                    style: TextStyle(
                      color: tileTextColor
                    ),
                    items: currency.map((e) => DropdownMenuItem(
                      alignment: Alignment.center,
                      value: e,
                      child: Text(e))).toList(),
                      decoration: InputDecoration(
                        label: Text("Choose Currency", 
                        style: TextStyle(
                          color: tileTextColor
                        ),),
                        border: const OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: tileTextColor), ),
                      ),
                      ),
                
                   const SizedBox(height: 15,),
               CustomInputField(name: "id",
                headerTitle: "ZOL ID"),
                SizedBox(height: 15,),
                CustomInputField(name: "amnt",
                 headerTitle: "Amount"),
                const  SizedBox(height: 100,),
                // CustomButton(
                //   btnName: "Send",
                //   onTap: (){
                //     print("object");
                //     PlatformAlertDialog(
                //       title: Text("Zol Payment"),
                //       content: Text("Are you sure u want to make a Zol Payment for \$x"),
                //     );
                //   },
                // )
                
              ],
            )),
             CustomButton(
              btnName: "Send",
              onTap: (){
                print("object");
                PlatformAlertDialog(
                  title: Text("Zol Payment"),
                  content: Text("Are you sure u want to make a Zol Payment for \$x"),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}