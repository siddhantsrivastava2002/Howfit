import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import'package:bmi_calculator/InputBox.dart';
import'package:bmi_calculator/bottombutton.dart';
class Resultspage extends StatelessWidget {

  Resultspage({@required this.bmiresult,@required this.resultText,@required this.interpretation,@required this.bfat,});

  final String bmiresult;
  final String resultText;
  final String interpretation;
  final String bfat;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('HOW FIT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child:Text(
                'YOUR RESULT',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color(0XFFA435F0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          ),
          Expanded(
            flex:6,
            child:INPUTBOX(
              rangeela:Color(0XFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                     resultText,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Color(0XFF24D876),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiresult,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 100.0,
                      color: Color(0XFF24D876),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        Text(
        "Body Fat % : ",
          textAlign: TextAlign.center,
        style: TextStyle(
        fontSize: 28.0,
        color: Color(0XFFFFFFFF),
        fontWeight: FontWeight.bold,
        ),
        ),
    Text(
    bfat,
      textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 28.0,
    color: Color(0XFFFFFFFF),
    fontWeight: FontWeight.bold,
    ),
    ),
      ],
    ),

    Text(
    interpretation,
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 25.0,
    color: Color(0XFF24D876),

    fontWeight: FontWeight.bold,
    ),
    ),


                ],
              ),

            )
          ),
          CalcButton(buttonTitle: 'RE-CALCULATE',touchit: (){Navigator.pop(context);},)
        ],

      ),
    );
  }
}