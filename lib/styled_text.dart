import 'package:flutter/material.dart';
 class StayledText extends StatelessWidget{
 const StayledText(this.text, {super.key,});
  final String text;
  @override
  Widget build(context){
  return  Text(
    text,
     style: const TextStyle(
               color: Color.fromARGB(255, 135, 128, 128),
               fontSize: 24.6,
            ),
            );
 }
 }