import 'package:cashmet_redo/utils/colors.dart';
import 'package:cashmet_redo/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:relative_scale/relative_scale.dart';
import 'package:timer_count_down/timer_count_down.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});
  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  bool isloading = false;
  String? bal;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bal = "Show balance";
   
  }
  @override
  Widget build(BuildContext context) {
    

     return RelativeBuilder(builder: (context, height, width, sy, sx) {
      return SafeArea(
      child: PlatformScaffold(
        
        backgroundColor: mainColor,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            CustomAppBar(),
                Padding(
                  padding: const EdgeInsets.only(left: 20.00 ),
                  child: PlatformText(
                    "Hello \nRedes",
                                style: TextStyle(
                                  color: tileTextColor,
                                  fontSize: sx(18),
                                  fontWeight: FontWeight.w800
                                ),),
                ),
               const SizedBox(height: 18,),
                Card(
                  color: mainColor,
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: height*0.20,
                      width: width*0.94,
                      decoration:  BoxDecoration(
                        color: cardGoldishColor,
                        borderRadius: const BorderRadius.all(Radius.circular(16)), ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: PlatformIconButton(
                                icon: Icon(
                                  size: 80.00,
                                  Icons.wallet,
                                  color: tileTextColor,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    PlatformText("Wallet Balance (zw)",
                                    style: TextStyle(
                                      color: tileTextColor,
                                      fontSize: sx(20),
                                    ),),
                                     SizedBox(height: sy(10)),
                                    Padding(
                                      padding: EdgeInsets.only(top: sy(30)),
                                      child: isloading? const CircularProgressIndicator(): PlatformText(bal.toString(),
                                      style: TextStyle(
                                        color: tileTextColor,
                                       fontSize: sx(18) 
                                      ),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 50, right: 50),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: PlatformIconButton(
                                  onPressed: (){
                                    setState(() {
                                      isloading = true;
                                    });
                                    
                                    Future.delayed(const Duration(seconds: 3), (){
                                      setState(() {
                                    isloading = false;
                                    bal = "100.00";
                                    });
                                    });
                                  
                                  //  Countdown(seconds: 2, build: (BuildContext context, double time){
                                  //  return CircularProgressIndicator();}
                                  //  ); 
                                   },
                                  icon: Icon(Icons.refresh,
                                  size: 55,
                                  color: tileTextColor,),
                                ) ,
                              ),
                            )
                          ],
                  
                        ),
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: PlatformText("Recent Transactions",
                  style: TextStyle(
                    color: tileTextColor,
                    fontSize: sx(18),
                    fontWeight: FontWeight.bold
                
                  ),),
                ),
              const  SizedBox(height: 40,),
                Card(
                  color: mainColor,
                  child: Container(
                    height: height*0.35,
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: ((context, index) => 
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListTile(
                        leading: Padding(
                          
                          padding: const EdgeInsets.all(6.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withOpacity(0.2),
                            child: Center(
                              child: Icon(
                                Icons.call_received_sharp,
                                color: tileTextColor,
                                size: sx(25),)),
                          ),
                        ),
                        trailing: PlatformText("+\$10000",
                        style: TextStyle(
                          color: Colors.green
                        ),),
                        title: PlatformText("Subscriber Bank To Wallet",
                        style: TextStyle(
                          color: tileTextColor,
                          fontSize: sx(16)
                        ),),
                        subtitle: PlatformText("2 hours ago",
                        style: TextStyle(
                          color: tileTextColor,
                          fontSize: sx(12)
                        )),
                      ),
                    )
                    )),
                  ),
                )
            ],
          ),
        ),
      ),
    );});
  }
}