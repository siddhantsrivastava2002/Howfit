import'package:flutter/material.dart';
import'package:bmi_calculator/InputBox.dart';

class CalcButton extends StatelessWidget {
CalcButton({@required this.buttonTitle,@required this.touchit});
final Function touchit;
final String buttonTitle;


@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: touchit,
    child: Container(
      color: Color(0XFFA435F0),
      margin: EdgeInsets.only(top:20.0),
      padding: EdgeInsets.only(bottom:20.0,top:20.0),
      child:Center(
        child: Text(
          buttonTitle,
          style:TextStyle(
            color: Color(0XFFFFFFFF),
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),



        ),
      ),
    ),
  );
}
}