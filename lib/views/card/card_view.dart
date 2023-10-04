import 'package:cashmet_redo/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width,sy, sx) {
        return Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            backgroundColor: mainColor,
            centerTitle: true,
            forceMaterialTransparency: true,
            title: Text("My Virtual Card",
            style: TextStyle(
              color: goldishColor
            ),),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: height*0.40,
                  width: width*0.98,
                  decoration: BoxDecoration(
                    //color: goldishColor,
                 shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/virtual_card.jpeg",),
                    
                  )
                  ),
                   
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Text("data", style: TextStyle(color: tileTextColor),)
                    ],
                  ),
                )
                // Image.asset("assets/images/virtual_card.jpeg",
                //   fit: BoxFit.fill,
                //   ),
                ),
              )
            ],
          ) ,
        );
      }
    );
  }
}