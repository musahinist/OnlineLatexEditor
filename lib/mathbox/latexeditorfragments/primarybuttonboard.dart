
import 'package:flutter/material.dart';
import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';

import '../primarybuttons.dart';


class PrimaryButtonsideboard extends StatelessWidget {
  PrimaryButtonsideboard({Key key, this.changeSbuttons}) : super(key: key);
  Function changeSbuttons;
  List<PrimaryButton> primaryButtonslist = primarybuttonslist;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.blue,
      alignment: Alignment.topLeft,
      child: ListView.builder(
        itemCount: primaryButtonslist.length,
        itemBuilder: (context, index) {
          PrimaryButton pbutton = primaryButtonslist[index];
          return RaisedButton(
            color: Colors.white54,
            onPressed: (){
              changeSbuttons(pbutton);
            },
                      child: Container(
              margin: EdgeInsets.all(5.0),
              child: ListTile(
               
              
                leading: Container(
                  color: Colors.blue,
                  height: 25.0,
                  width: 25.0,
                ),
                title: Text(
                  pbutton.name,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}