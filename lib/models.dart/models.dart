import 'package:flutter/material.dart';

//function for calculating ratios for responsive design
void sizescaleconfig(
    {double screenheight,
    double screenwidth,
    double textscalefactor,
    BuildContext context}) {
  Sizescaleconfig.screenheight = MediaQuery.of(context).size.height;
  Sizescaleconfig.screenwidth = MediaQuery.of(context).size.width;
  Sizescaleconfig().calculaterscaleratio();

  Sizescaleconfig.textscalefactor = MediaQuery.of(context).textScaleFactor;
}

class Sizescaleconfig {
  final double refrenceheight = 715.0;
  final double referencewidth = 425.0;
  static double screenheight;
  static double screenwidth;
  static double heightscaleratio;
  static double widthscaleratio;
  static double textscalefactor;

  void calculaterscaleratio() {
    heightscaleratio = screenheight / refrenceheight;
    widthscaleratio = screenwidth / referencewidth;
  }

  double scalehightfactor(double actualheight) {
    return actualheight * heightscaleratio;
  }

  double scalewidthfactor(double actualwidth) {
    print('${actualwidth * widthscaleratio}*$textscalefactor}awd');
    return actualwidth * widthscaleratio;
  }

  double scaletextfactor(double actualfontsize) {
    return actualfontsize * heightscaleratio * textscalefactor;
  }
}

class Destinations {
  String name;
  String destinationname;

  Destinations({this.name, this.destinationname});
}

List<Destinations> alldestinations = [
  Destinations(name: 'Dashboard', destinationname: 'Dashboard'),
  Destinations(name: 'Master', destinationname: 'Master'),
  Destinations(name: 'Add Subject', destinationname: 'AddSubject'),
  Destinations(name: 'Add Question', destinationname: 'AddQuestion'),
  Destinations(name: 'View Quetion', destinationname: 'ViewQuetion'),
  Destinations(name: 'View Quetion', destinationname: 'ProfileSection'),
];

class Question {
 
  String question;
  String correctoption;
  String optionAtext;
  String optionBtext;
  String optionCtext;
  String optionDtext;

  Question({this.question,this.correctoption,this.optionAtext,this.optionBtext,this.optionCtext,this.optionDtext});
}


