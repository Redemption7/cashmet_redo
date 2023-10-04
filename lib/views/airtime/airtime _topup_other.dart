import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../constants/currency_codes.dart';
import '../../widgets/custom_input_field.dart';

class AirtimeTopUpOther extends StatefulWidget {
  const AirtimeTopUpOther({super.key});

  @override
  State<AirtimeTopUpOther> createState() => _AirtimeTopUpOtherState();
}

class _AirtimeTopUpOtherState extends State<AirtimeTopUpOther> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
    
      builder: (context, height, width, sy, sx) {
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
            title: PlatformText("Airtime Topup Other", style: TextStyle(color: goldishColor),),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FormBuilder(
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
                  Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Container(
                            height: 95,
                            width: width*0.70,
                            child: const CustomInputField(name: "num", headerTitle: "Acc Number")),
                           const  SizedBox(width: 10,),
                           Expanded(child: Container(
                            alignment: Alignment.center,
                            height: 60,
                            //width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: tileTextColor
                              ),
                              borderRadius:BorderRadius.circular(8)),
                            child: PlatformIconButton(
                              materialIcon: IconButton(
                                onPressed: (){ }, 
                                icon: Icon(Icons.contact_page, color:tileTextColor)),
                            )
                            ),
                           ),
                         ],
                       ),
                  const SizedBox(height: 10,),
                  const CustomInputField(name: "amnt", headerTitle: "Amount"),
                  const SizedBox(height: 100,),
                  CustomButton(btnName: "Send", onTap: (){})
              ],
            )),
          ),
        );
      }
    );
  }
}