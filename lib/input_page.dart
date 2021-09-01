import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'package:bmi_calculator/IconContent.dart';
import'package:bmi_calculator/InputBox.dart';
import 'package:bmi_calculator/Results_page.dart';
import'package:bmi_calculator/howfit_brain.dart';
import'package:bmi_calculator/bottombutton.dart';
const kactiveColor=Color(0XFF1D1E33);
const kinactiveColor=Color(0XFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor= kinactiveColor;
  Color femaleCardColor= kinactiveColor;
  int height=180;
  int weight=60;
  int age=18;
  int gender;

  void updateColor(int gender)
  {
    if(gender==1)
      {
        if(maleCardColor==kinactiveColor)
          {
            maleCardColor=kactiveColor;
            femaleCardColor=kinactiveColor;
          }
        else
          {
            maleCardColor=kinactiveColor;
          }
      }
    if(gender==2)
      {
        if(femaleCardColor==kinactiveColor)
          {
            femaleCardColor=kactiveColor;
            maleCardColor=kinactiveColor;
          }
        else
        {
          femaleCardColor=kinactiveColor;
        }
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOW FIT'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap:(){
                      setState(() {
                        gender=1;
                        updateColor(1);
                      });
    },
                  child: INPUTBOX(rangeela:maleCardColor ,
                  cardChild: IconContent(label:'MALE',Sanket: FontAwesomeIcons.mars,
                   ),
                  ),
                ),
                ),
                Expanded(

                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        gender=2;
                        updateColor(2);
                      });
                    },
                    child: INPUTBOX(rangeela: femaleCardColor,
                    cardChild: IconContent(label:'FEMALE',Sanket: FontAwesomeIcons.venus,
                    ),
                ),
                  ),
                ),
              ],
          ),

          ),

          Expanded(child: INPUTBOX(rangeela: kinactiveColor,
          cardChild: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'HEIGHT',
                style: TextStyle(
                  color: Color(0XFFFFFFFF),
                  fontSize: 18.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    height.toString(),
                      style:TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 50.0,
                      ),

                  ),
                  Text(
                    'CM',
                    style:TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 18.0,
                    ),

                  ),

                ],



              ),
              Slider(
                value: height.toDouble(),
                min:120.0,
                max:220.0,
                activeColor: Color(0XFFA435F0),
                inactiveColor: Color(0XFF8D8E98),

                onChanged: (double newValue){
                  setState(() {
                    height=newValue.round();
                  });
                },

              ),

            ],
          ),
          ),
          ),
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: INPUTBOX(rangeela: kinactiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget>[
                  Text(
                    'WEIGHT',
                    style:TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 18.0,
                    ) ,
                  ),
                  Text(
                    weight.toString(),
                    style:TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 50.0,
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        backgroundColor: Color(0XFF4C4F5E),
                        child: Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                        ),
                        onPressed: (){
                          setState(() {
                            weight--;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      FloatingActionButton(
                        backgroundColor: Color(0XFF4C4F5E),
                        child: Icon(

                          FontAwesomeIcons.plus,
                          color: Colors.white,
                        ),
                        onPressed: (){
                          setState(() {
                            weight++;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),),),
              Expanded(child: INPUTBOX(rangeela: kinactiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget>[
                    Text(
                      'AGE',
                      style:TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 18.0,
                      ) ,
                    ),
                    Text(
                      age.toString(),
                      style:TextStyle(
                        color: Color(0XFFFFFFFF),
                        fontSize: 50.0,
                      ),

                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          backgroundColor: Color(0XFF4C4F5E),
                          child: Icon(
                            FontAwesomeIcons.minus,
                            color: Colors.white,
                          ),
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        FloatingActionButton(
                          backgroundColor: Color(0XFF4C4F5E),
                          child: Icon(

                            FontAwesomeIcons.plus,
                            color: Colors.white,
                          ),
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),),),
            ],
          ),
          ),
          CalcButton(buttonTitle:'CALCULATE',touchit: (){
            Howfitbrain calc=Howfitbrain(height: height,weight: weight,age: age,gender: gender,);
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Resultspage(
              bmiresult: calc.calculateBmi(),
              resultText: calc.suggestionwbmi(),
              interpretation: calc.extrapoints(),
              bfat: calc.calculatefat(),
            )));
          },),


        ],
      ),

    );
  }
}




