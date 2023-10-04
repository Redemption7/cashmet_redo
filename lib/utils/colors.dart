// global common app color themes defined here
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color mainColor = Color(0xFF231F20);

final Color logoBlueColor = mainColor;
final Color logoYellowColor = Color(0xFFEEB62F);
//final Color grapeColor = Color(0xFF272264);
final Color grapeColor = logoBlueColor;
final Color greyColor = Colors.grey.withOpacity(0.1);

final Color textColor = tileTextColor;
//final Color textColor = Colors.white;

final Color greyMainColor = Colors.grey;
final Color whiteColorOp = Colors.white.withOpacity(0.8);

final Color homeBgColor = Color(0xFF333533);

// new logo color: #EABE56
// old goldish color: 0xFFEDAA1A
final Color goldishColor = Color(0xFFEABE56);
final Color backgroundColor = Color(0xFFD4D4D4);

// final Color cardGoldishColor = Color(0xFFFFC300);
final Color cardGoldishColor = goldishColor;

//final Color tileColor = Color(0xFFEEEEEE);
final Color tileColor = homeBgColor;

final Color tileTextColor = Color(0xFFFAFDF6);

final Color greyFaint = Colors.grey.withOpacity(0.3);
final Color tileIconColor = Color(0xFFD6D6D6);

 LinearGradient metGradient = LinearGradient(colors: [
  
  Colors.red,
  goldishColor,
  Colors.black,
  Colors.black,
  Colors.black,
  goldishColor,
  // Color.fromARGB(6, 251, 230, 4),
  // Color.fromARGB(0, 224, 201, 50),
  // Color.fromARGB(0, 103, 89, 3),
  // Colors.black,Colors.black,Colors.black


],
 stops: const [
  0.0001,
 0.07,0.18,0.64, 0.97, 1,
], 
begin: Alignment.topLeft, end: Alignment.bottomRight);
