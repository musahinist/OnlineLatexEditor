
import 'package:flutter/material.dart';

class Searchfiled extends StatelessWidget {
  const Searchfiled({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
            prefixIcon: Icon(
          Icons.search,color: Colors.white,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        )
        
        ),
      ),
    );
  }
}
