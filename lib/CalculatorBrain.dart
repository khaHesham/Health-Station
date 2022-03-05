import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height,this.weight,this.age,this.gender});
  final int height;
  final int weight;
 final int age;
 final int gender;

  double bmi;
  String Calculate(){
     bmi= weight/pow(height/100, 2);
    return bmi.toStringAsFixed(1);
  }
String Result(){
    if(bmi>=25 && bmi <30)
      {
        return 'Overweight';
      }
    else if(bmi>=30)
      {
        return 'Obesity';
      }
    else if(bmi<18.5)
      {
        return 'Underweight';
      }
    else if(bmi>=18.5 && bmi<25.0)
      {
        return 'Normal';
      }
}
double BMI(){
    return bmi;
}
String Advice(){
  if(bmi>=25 )
  {
    return 'You have higher than the normal body weight. Try to exercise more.';
  }
  else if(bmi<18.5)
  {
    return 'You have a lower than normal body weight. You should eat more.';
  }
  else if(bmi>=18.5 && bmi<25.0)
  {
    return 'You have a normal body weight. Good job';
  }
}
String Calories(){
    double calories;
    if(gender==1)
      {
        calories=(10*weight+6.25*height-5*age+5);
            return calories.toStringAsFixed(1);
      }
    else if(gender==2)
      {
        calories=1.3*(10*weight+6.25*height-5*age-161);
        return calories.toStringAsFixed(1);
      }
    else return'';
}

}