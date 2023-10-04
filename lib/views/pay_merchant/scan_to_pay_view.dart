import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner; 

class ScanToPayView extends StatefulWidget {
  const ScanToPayView({super.key});

  @override
  State<ScanToPayView> createState() => _ScanToPayViewState();
}

class _ScanToPayViewState extends State<ScanToPayView> {
  String? scanresult;

    @override
  void initState() {
    scanresult = "none"; //innical value of scan result is "none"
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         alignment: Alignment.topCenter, //inner widget alignment to center
         padding: EdgeInsets.all(20),
         child:Column(
           children:[
                Container(
                  child: Text("Scan Result: " + scanresult!)
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.only(top:30),
                    child:  Text("Scan QR or Bar Code")
                    ),
                     onTap: () async {
                      scanresult = await scanner.scan();
                      setState(() { //refresh UI to show the result on app
                      });
                    }, 
                  ),
              
           ],
         )
      ),
    );
  }
}