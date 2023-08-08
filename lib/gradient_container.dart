
import 'package:demoapp/dice_roller.dart';
import 'package:flutter/material.dart';

const startallignment=Alignment.topLeft;
const endalignment=Alignment.bottomRight;
class GradientContainer extends StatelessWidget{

  const GradientContainer(this.color1,  this.color2,{super.key});
  const GradientContainer.purple():color1= Colors.deepPurple,color2=Colors.deepOrange;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context){
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [color1,color2],
          begin:startallignment,
          end: endalignment,
        ),
      ),
      child:  const Center(
        child:DiceRoller(),
      ),
    );
  }
}