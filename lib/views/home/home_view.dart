import 'package:cashmet_redo/constants/routes.dart';
import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:relative_scale/relative_scale.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(builder: (context, height, width, sy, sx)
     {
        return SafeArea(
          child: Scaffold(
            //backgroundColor: mainColor,
            body: SingleChildScrollView(
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  gradient: metGradient
                ),
                child: const HomeCard(),
                ),
            ),
           
            bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: mainColor,
        // sets the active color of the `BottomNavigationBar` if `Brightness` is light
        primaryColor: Colors.red,
        textTheme: Theme
            .of(context)
            .textTheme
            .copyWith(caption: new TextStyle(color: Colors.yellow))),
              child: PlatformNavBar(
                backgroundColor: mainColor,
                items:  [
                  BottomNavigationBarItem(
                    icon:PlatformIconButton( 
                      onPressed: () {
                        Navigator.pushNamed(context, CashMetRoutes.home);
                      },
                    icon:Icon(Icons.home,
                    color: tileTextColor,),),
                    label: "Home",
                    
                  ),
                     BottomNavigationBarItem(
                      icon:PlatformIconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CashMetRoutes.bankingServicesView);
                        },
                        icon:PlatformIconButton(icon:Icon( Icons.wallet_outlined, color: tileTextColor,))),
                        label: "Banking",
                       ),
                     BottomNavigationBarItem(
                    icon:PlatformIconButton(
                      icon: Icon(Icons.card_membership,
                       color: tileTextColor,),
                       onPressed: () {
                         Navigator.pushNamed(context, CashMetRoutes.card);
                       },
                       ), 
                    label: "Virtual Card"
                  ),
                     BottomNavigationBarItem(
                    icon: PlatformIconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CashMetRoutes.servicesView);
                      },
                      icon: Icon(Icons.menu, color: tileTextColor,),
                    ),
                    label: "Services"
                  ),
                     BottomNavigationBarItem(
                    icon:PlatformIconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, CashMetRoutes.settings);
                      },
                      icon: Icon(Icons.settings, color: tileTextColor,)),
                    label: "Settings"
                  ),
                    
                ],
              ),
            )
          ),
        );
      }
    );
  }
}