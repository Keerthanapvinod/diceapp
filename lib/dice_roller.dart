import 'dart:math';
import 'package:flutter/material.dart';
final randomizer=Random();

class DiceRoller extends StatefulWidget{
 const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
   return _DiceRollerState();
  }
}

 class _DiceRollerState extends State<DiceRoller>{
  var curentDiceRoll=2; 
  void rollDice() {
     
    setState(() {
      curentDiceRoll=randomizer.nextInt(6)+1;
    });
    
  }
  @override

  Widget build(context) {
   return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
        'assets/images/dice-$curentDiceRoll.png',
        width:200,
            ),
          const SizedBox(height: 20),
           TextButton(
            onPressed:rollDice, 
            style: TextButton.styleFrom(
             // padding:const EdgeInsets.only(
               //top: 20
               // ) ,
              foregroundColor:Colors.white,
              textStyle:const TextStyle(
                fontSize:24.3, ),
                ),
            child: const Text('roll dice'),
            )
        ],
        );
  }
 }