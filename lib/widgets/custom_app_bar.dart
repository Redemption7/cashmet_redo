import 'package:cashmet_redo/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PlatformWidget(
              cupertino: (context, platform) => Image.asset("assets/images/logo.png", height: 100,),
              material: (context, platform) => Image.asset("assets/images/logo.png", height: 100,),
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: logoYellowColor,
                  radius: 22,
                  child: Center(child: PlatformIconButton(
                    //cupertinoIcon: ,
                    icon: Icon(
                      Icons.question_mark,
                       color: mainColor,
                       size: 16,
                       fill: 0.0,),))),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: logoYellowColor,
                    radius: 22,
                    child: PlatformIconButton(icon: Icon(Icons.logout, color: mainColor,size: 16,),)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}