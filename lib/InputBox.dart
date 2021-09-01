import'package:flutter/material.dart';

class INPUTBOX extends StatelessWidget {
  INPUTBOX({@required this.rangeela,this.cardChild});
  final Color rangeela;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: rangeela,
        borderRadius: BorderRadius.circular(10.0),
      ),

    );
  }
}