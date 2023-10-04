import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/custom_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../constants/currency_codes.dart';
import '../../widgets/custom_button.dart';

class ZipitView extends StatefulWidget {
  const ZipitView({super.key});

  @override
  State<ZipitView> createState() => _ZipitViewState();
}

class _ZipitViewState extends State<ZipitView> {
  final _formKey = GlobalKey<FormBuilderState>();
  List<String> banks = ["CBZ" ,"NBS", "Metbank"];
  bool isloading = false;
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
        title: Text("Zipit",
        style: TextStyle(
          color: goldishColor
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                  SizedBox(height: 15,),
              Container(
                height: 80,
                child: FormBuilderDropdown(
                  name: "option", 
                  iconEnabledColor: tileTextColor,
                  dropdownColor: Colors.grey,
                  style: TextStyle(
                    color: tileTextColor
                  ),
                  items: banks.map((e) => DropdownMenuItem(
                    alignment: Alignment.center,
                    value: e,
                    child: Text(e))).toList(),
                    decoration: InputDecoration(
                      label: Text("Choose Bank", 
                      style: TextStyle(
                        color: tileTextColor
                      ),),
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: tileTextColor), ),
                    ),
                    ),
              ),
              const CustomInputField(name: "acc", headerTitle: "Account Nhumber"),
               const  SizedBox(height: 10,),
               const CustomInputField(name: "amnt", headerTitle: "Amount"),
               const SizedBox(height: 10,),
               const CustomInputField(name: "ref", headerTitle: "Transaction Ref"),
               const SizedBox(height: 10,),
               const  CustomInputField(name: "rmobile", headerTitle: "Receiver Mobile"),
              const SizedBox(height: 10,),
                 CustomInputField(name: "rname", headerTitle: "Receiver Name"),
                SizedBox(height: 10,),
      
              CustomButton(
                isloading: isloading,
                btnName: "Send",
                onTap: (){
                  setState(() {
                    isloading = true;
                  });
                  Future.delayed(
                    const Duration(
                      seconds: 3,
                    ), (){
                      setState(() {
                        isloading = false;
                      });
                    }
                  );
                },
              )
              
            ],
          )),
        ),
      ),
    );
  }
}