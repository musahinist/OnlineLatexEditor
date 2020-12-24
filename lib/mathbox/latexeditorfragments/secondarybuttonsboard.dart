
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_math/flutter_math.dart';
import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';

import 'package:provider/provider.dart';


import '../../style.dart';
import '../mathfunctions.dart';

class SecondaryButtonsideboard extends StatelessWidget {
  SecondaryButtonsideboard(
      {Key key,
      this.primarybutton,
      this.textEditingController,
      this.updatelatexstring})
      : super(key: key);

  PrimaryButton primarybutton;
  TextEditingController textEditingController;
  Function updatelatexstring;

  @override
  Widget build(BuildContext context) {
    final latexprovider = Provider.of<LatexstringProvider>(context);
    return Container(
      color: Colors.lightBlue,
      alignment: Alignment.topLeft,
      child: Container(
          width: 220,
          alignment: Alignment.topLeft,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 1.0,
                maxCrossAxisExtent: 100.0,
                mainAxisSpacing: 5.0,
                crossAxisSpacing: 5.0),
            itemCount: primarybutton.secondaybuttonslist.length,
            itemBuilder: (context, index) {
              return FlatButton(
                onPressed: () {

                  if (primarybutton.name == 'matriceslist') {
                          entermatrixrowsncolumns(context,primarybutton, latexprovider, textEditingController, index);
                  } else {
                    latexprovider.updatestring(
                        primarybutton.secondaybuttonslist[index].latexstring,
                        true,
                        offset: textEditingController.selection.baseOffset);
                  }


                },
                child: Container(
                  color: primarycolor,
                  margin: EdgeInsets.all(5.0),
                  alignment: Alignment.center,
                  child: FittedBox(
                    child: Math.tex(
                        primarybutton.secondaybuttonslist[index].latexstring,
                        textStyle: TextStyle(color: Colors.black),
                        mathStyle: MathStyle.display),
                  ),
                ),
              );
            },
          )),
    );
  }
}
