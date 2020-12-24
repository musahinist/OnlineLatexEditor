import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';

String createthismatrix(int r,int c,{String matrixtype}){

    String latexstring = r'';

    for (var i = 1; i <=r; i++) {

      for (var j = 1; j <=c; j++) {
        if(j==c){
          latexstring+= r'  \\';
        }
          else{
            latexstring+= r'  &  ';
          }
      }
      
    }

    latexstring = r'\begin' + matrixtype + latexstring + r'\end'+ matrixtype;

    return latexstring;
  
}



void entermatrixrowsncolumns(BuildContext context,PrimaryButton primarybutton,LatexstringProvider latexprovider,TextEditingController textEditingController,int index)async{

    TextEditingController rowstexteditingcontroller = TextEditingController(); 
    TextEditingController columnstexteditingcontroller = TextEditingController(); 

    List<int> rowsncolumns = await showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text('Enter the number of rows and columns.eg:(2,3) for 2 rows and 3 columns'),

          children: [
            Row(
              children: [
                Text('rows :'),
               Flexible(
                                  child: TextField(
                    controller: rowstexteditingcontroller,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('0|1|2|3|4|5|6|7|8|9|')),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(

                      )
                    ),
                  ),
                ),
                SizedBox(width: 25.0,),
                Text('columns :'),
                Flexible(
                                  child: TextField(
                    controller: columnstexteditingcontroller,
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp('0|1|2|3|4|5|6|7|8|9|')),
                    ],
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        
                      )
                    ),
                  ),
                )
              ],
            ),
            FlatButton(
              onPressed: (){
                  Navigator.pop(context,[int.parse(rowstexteditingcontroller.text),int.parse(columnstexteditingcontroller.text)]);
              },
              child: Text('Add'),
            ),
            FlatButton(
               onPressed: (){
                  Navigator.pop(context);
              },
              child: Text('Cancel'),
            )
          ],
        );
      }
    );
    
     String latexsstring = createthismatrix(rowsncolumns[0], rowsncolumns[1],
                        matrixtype:
                            primarybutton.secondaybuttonslist[index].name);

    latexprovider.updatestring(latexsstring, true,
                        offset: textEditingController.selection.baseOffset);
}