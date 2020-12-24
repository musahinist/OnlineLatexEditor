
import 'package:flutter/material.dart';

class PrimaryButton {
  String name;
  String iconpath;
  List<SecondaryButton> secondaybuttonslist;

  PrimaryButton({this.name, this.secondaybuttonslist});
}

class SecondaryButton {
  String name;
  String iconpath;
  String latexstring;

  SecondaryButton({this.name, this.iconpath, this.latexstring});
}


class LatexstringProvider with ChangeNotifier {
  String latexstring = r'';
  int currentoffset;
  String get getlatexstring => latexstring;

  void updatestring(String newstring, bool isfrombutton, {int offset}) {
    
    if (isfrombutton) {
      if (offset >= 0) {
        List<String> listofstring =
            List.generate(latexstring.length, (index) => latexstring[index]);
        listofstring.insert(offset, newstring);
        latexstring = listofstring.join();
        currentoffset = offset;
         currentoffset+= newstring?.length;
        notifyListeners();
      } else{
         
        
        latexstring += newstring;
        currentoffset = offset;
        notifyListeners();
      }
    } else {
      latexstring = newstring;
      currentoffset = offset;
      notifyListeners();
    }
  }
}

class SavedEquationList with ChangeNotifier {

  List<SecondaryButton> savedequations ;

  SavedEquationList({this.savedequations});

  List<SecondaryButton> get getsavedequation => savedequations;


  void setupdatedlist(SecondaryButton newequation){
    savedequations.insert(0, newequation);

    notifyListeners();
  }

  
}