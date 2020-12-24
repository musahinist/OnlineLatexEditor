
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:online_latex_editor/models.dart/mathmodelsnproviders.dart';

// import 'package:provider/provider.dart';


// import 'searchfield.dart';






// class RightSideKit extends StatefulWidget {
//   RightSideKit({Key key, @required this.textEditingController})
//       : super(key: key);

//   TextEditingController textEditingController;
//   @override
//   _RightSideKitState createState() => _RightSideKitState();
// }

// class _RightSideKitState extends State<RightSideKit> {
//   bool ishovering = false;

//   List<SecondaryButton> savedequationslist;

//   @override
//   Widget build(BuildContext context) {
//     final latexprovider = Provider.of<LatexstringProvider>(context);
//     final savedequationslistprovider = Provider.of<SavedEquationList>(context);
//      savedequationslist = savedequationslistprovider.getsavedequation;

//     var sliverGridDelegateWithMaxCrossAxisExtent = SliverGridDelegateWithMaxCrossAxisExtent(
//                       childAspectRatio: 1,
//                       maxCrossAxisExtent: 80.0,
//                       mainAxisSpacing: 5.0,
//                       crossAxisSpacing: 5.0);
//         return Container(
//           width: 230,
//           color: Colors.blueAccent,
//           alignment: Alignment.topLeft,
//           padding: EdgeInsets.all(10),
//           child: Column(
//             children: [
//               Searchfiled(),
//               SizedBox(height: 20.0,),
//               Flexible(
//                 child: GridView.builder(
//                   itemCount: savedequationslist.length,
//                   gridDelegate: sliverGridDelegateWithMaxCrossAxisExtent,
//               itemBuilder: (context, index) {
//                 if (index == 0) {
//                   return Container(
//                       color: Colors.white,
//                       child: Center(
//                         child:
//                             IconButton(onPressed: () async{
//                               await addnewequationdialog(context, savedequationslistprovider);
//                             }, icon: Icon(Icons.add)),
//                       ));
//                 } else {
//                   SecondaryButton equation = savedequationslist[index - 1];
//                   return Container(
//                     alignment: Alignment.bottomLeft,
//                     decoration: BoxDecoration(
//                       color: primarycolor,
//                     ),
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: InkWell(
//                             hoverColor: Colors.red,
//                             onTap: () async {

//                               showequationdialog(context, equation, index - 1, latexprovider);

//                             },
//                             child: Container(
//                               padding: EdgeInsets.all(5.0),
//                               child: Math.tex(equation.latexstring,
//                                   textStyle: TextStyle(color: Colors.black),
//                                   mathStyle: MathStyle.display),
//                             ),
//                           ),
//                         ),
//                         Text(
//                           equation.name,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }






















//   Future addnewequationdialog(BuildContext context, SavedEquationList savedequationslistprovider) {

//     TextEditingController textEditingController = TextEditingController();
//       TextEditingController equationEditingController = TextEditingController();
//     return showDialog(
//         barrierDismissible: false,
//                               context: context,
//                               builder: (context){
//                                 return SimpleDialog(
//                                   title: Text('Add Equation'),
//                                   children: [
//                                     Container(
//                                       padding: EdgeInsets.all(5.0),
//                                       child: TextField(
//                                         controller: textEditingController,
//                                         decoration: InputDecoration(
//                                           labelText: 'Title',
//                                           enabledBorder: OutlineInputBorder(),
//                                           focusedBorder: OutlineInputBorder(
//                                             borderSide: BorderSide(
//                                               color: primarycolor
//                                             )
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(height: 20.0,),
//                                      Container(
//                                       padding: EdgeInsets.all(5.0),
//                                       child: TextField(
//                                         controller: equationEditingController,
//                                         decoration: InputDecoration(
//                                           labelText: 'Equation',
//                                           enabledBorder: OutlineInputBorder(),
//                                           focusedBorder: OutlineInputBorder(
//                                             borderSide: BorderSide(
//                                               color: primarycolor
//                                             )
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Row(
//                                       children: [
//                                         ButtonBar(
//                                           children: [
//                                             FlatButton(
//                                               onPressed: (){

//                                                savedequationslistprovider.setupdatedlist(SecondaryButton(
//                                                  name: textEditingController.text,
//                                                  latexstring:equationEditingController.text
//                                                ));
//                                                Navigator.pop(context);

                                              
                                               
//                                               },
//                                               child: Text('Save'),
//                                             ),
//                                             FlatButton(
//                                               onPressed: (){
//                                                    Navigator.pop(context);
//                                               },  
//                                               child: Text('Cancel'),
//                                             )
//                                           ],
//                                         ),
//                                       ],
//                                     )
//                                   ],
//                                 );
//                               }
//                             );
//   }

//   Future<void> showequationdialog(
//       BuildContext context,
//       SecondaryButton equation,
//       int index,
//       LatexstringProvider latexstringProvider) async {

//     SecondaryButton equation = savedequationslist[index];

//     bool addequation = await addequationornot(context, equation);

//     if (addequation) {
//       latexstringProvider.updatestring(equation.latexstring, true,
//           offset: widget.textEditingController.selection.baseOffset);
//     }
//   }

//   Future<bool> addequationornot(BuildContext context, SecondaryButton equation) {
//     return showDialog(
//       context: context,
//        barrierDismissible: false,
//       builder: (BuildContext context) {
//         return SimpleDialog(
//           title: Text(equation.name),
//           children: <Widget>[
//             Container(
//               width: 100,
//               height: 100,
//               child: Math.tex(equation.latexstring,
//                   mathStyle: MathStyle.display),
//             ),
//             Row(
//               children: [
//                 ButtonBar(
//                   children: [
//                     FlatButton(
//                       onPressed: () {
//                         Navigator.pop(context, true);
//                       },
//                       child: Text('Add'),
//                     ),
//                     FlatButton(
//                       onPressed: () {
//                         Navigator.pop(context, false);
//                       },
//                       child: Text('Cancel'),
//                     )
//                   ],
//                 ),
//               ],
//             )
//           ],
//         );
//       });
//   }
// }
