import 'package:flutter/material.dart';

import 'models.dart/models.dart';

//primarycolor and common colors
Color primarycolor = Color(0xFF22D379);
Color dividercolor = Color(0xFFEDEDED);
Color offgreycolor = Colors.grey;

Color lightgrey = Colors.black12;
Color buttonbordercolor = Colors.black26;
Color wrongorerrorcolor = Color(0xFFE23838);

//Borders
BorderRadius primaryborderradius = BorderRadius.circular(5.0);
//

//Common stylings for all tables
TextStyle tableheadtextstyle = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 17.0
);
//

//decoration and shadow for containers.

 BoxDecoration primaryboxDecoration = BoxDecoration(
        borderRadius: primaryborderradius,
        color: Colors.white,
        boxShadow: <BoxShadow>[
          primaryboxshadow
        ]);

BoxShadow primaryboxshadow = BoxShadow(
              color: lightgrey,
              offset: Offset(0, 3),
              spreadRadius: 0.5,
              blurRadius: 8.0);
//

//Common textfields decoration
 


  InputDecoration tfinputdecoration(String hinttext){
      
     return InputDecoration(
       contentPadding: EdgeInsets.all(0),
       hintText: hinttext,
        enabledBorder: OutlineInputBorder(
          
            borderRadius: primaryborderradius,
            borderSide: BorderSide(color: buttonbordercolor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: primaryborderradius,
            borderSide: BorderSide(color: primarycolor)));
            
            
            }      
//

//Sidebar or drawer styles
TextStyle drawerheader = TextStyle(
  fontSize: 25,
);

Color inactivecolorfordraweritems = Colors.grey[200];
Color activecolorfordraweritem =  primarycolor;

RoundedRectangleBorder drawerbuttonborder = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
  topRight: Radius.circular(5),
  bottomRight: Radius.circular(5),
));

///

//common textstyles
TextStyle subheadertextstyle = TextStyle(
    fontSize: 15.0, fontWeight: FontWeight.w600, color: Color(0xFF404040));

TextStyle optionstextstyleforallpapers = TextStyle(
    fontSize: Sizescaleconfig().scaletextfactor(16),
    fontWeight: FontWeight.w300);

// Sizes for common icons throguhout the app

double arrowindicatorsforpaperssize = Sizescaleconfig().scalewidthfactor(40.0);

//bottom navigation bar style
const Color activeiconcolor = Color(0xFF00E676);
const Color inactiveiconcolor = Colors.black54;
Color offblack = Color(0XFF404040);
