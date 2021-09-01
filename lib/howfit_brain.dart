import'dart:math';
class Howfitbrain {
  Howfitbrain({this.height,this.weight,this.age,this.gender});
  final int height;
  final int weight;
  final int gender;
  final int age;
  double _bmi;
  double _fat;
  String calculateBmi()
  {
    _bmi=weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String calculatefat()
  {
    if(gender==1)
      {
        _fat=(1.20*_bmi)+(0.23*age)-16.2;
      }
    if(gender==2)
    {
      _fat=(1.20*_bmi)+(0.23*age)-5.4;
    }
    return _fat.toStringAsFixed(1);
  }
  String suggestionwbmi()
  {
    if(_bmi>=25)
      return 'Overweight';
    if(_bmi>18.5)
    return 'Normal';
    else
      return 'Underweight';
  }
  String extrapoints()
  {
    if(_bmi>=25)
      return 'You Should Lose Some Weight';
    if(_bmi>18.5)
      return 'Good Going!Ask yourself "How Fit !"';
    else
      return 'Hey Remember "Count the memories, not the calories" You should eat more';

  }
}