
import 'package:flutter/material.dart';
import 'package:flutter_math/flutter_math.dart';

import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';

import '../../style.dart';




class WriteandSeeoutput extends StatelessWidget {
  const WriteandSeeoutput({
    Key key,
    @required this.textEditingController,
    @required this.latexstring,
    @required this.latexequationstring,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final LatexstringProvider latexstring;
  final String latexequationstring;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(height: 50.0),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 600,
              child: TextField(
                maxLines: 10,
                controller: textEditingController,
                onChanged: (newlatexstring) {
                  latexstring.updatestring(newlatexstring, false,
                      offset: textEditingController.selection.baseOffset);
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primarycolor)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          DisplayLatexoutput(latexequationstring: latexequationstring),
        ],
      ),
    );
  }
}




class DisplayLatexoutput extends StatelessWidget {
  const DisplayLatexoutput({
    Key key,
    @required this.latexequationstring,
  }) : super(key: key);

  final String latexequationstring;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Align(
                    alignment: Alignment.center,
                    child: latexequationstring.isNotEmpty
                        ? Math.tex(latexequationstring,
                            mathStyle: MathStyle.display)
                        : Text('Output will be shown here.'))),
          ],
        ));
  }
}