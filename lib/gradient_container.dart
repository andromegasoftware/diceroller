import 'dart:math';

import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var startAlignmet = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

  var randomNumber = Random().nextInt(6) + 1;

class GradientContainer extends StatelessWidget{
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: const [Colors.blue, Colors.purple],
          begin: startAlignmet,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }

}

class StyledText extends StatelessWidget{
  const StyledText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

}