import 'package:flutter/material.dart';
import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';
import 'package:provider/provider.dart';





import 'latexeditorfragments/primarybuttonboard.dart';
import 'latexeditorfragments/rightsidekit.dart';
import 'latexeditorfragments/secondarybuttonsboard.dart';
import 'latexeditorfragments/writeandseelatexoutput.dart';

import 'primarybuttons.dart';

class LatexTextEditor extends StatefulWidget {
  @override
  _LatexTextEditorState createState() => _LatexTextEditorState();
}

class _LatexTextEditorState extends State<LatexTextEditor> {
  String latexequationstring = '';
  PrimaryButton primaryButton;
  TextEditingController textEditingController = TextEditingController();

  void changesecondaybutton(PrimaryButton primarybutton) {
    setState(() {
      primaryButton = primarybutton;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    primaryButton = primarybuttonslist[0];
  }

  @override
  Widget build(BuildContext context) {
    LatexstringProvider latexstring = Provider.of<LatexstringProvider>(context);
    latexequationstring = latexstring.getlatexstring;
    textEditingController.text = latexequationstring;
    //Bug solver algo;)
    textEditingController.selection = TextSelection.fromPosition(TextPosition(offset: latexstring.currentoffset??0));

    return Scaffold(  
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            PrimaryButtonsideboard(
              changeSbuttons: changesecondaybutton,
            ),
            SecondaryButtonsideboard(
              primarybutton: primaryButton,
              textEditingController: textEditingController
            ),
            WriteandSeeoutput(textEditingController: textEditingController, latexstring: latexstring, latexequationstring: latexequationstring),
            // RightSideKit(
            //   textEditingController: textEditingController,
            // )
          ],
        ),
      ),
    );
  }
}
