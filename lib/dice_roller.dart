import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {

  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var randomNumber = Random().nextInt(6) + 1;
  
  void rollDice(){
    
    setState(() {
      randomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Image.asset('assets/images/dice-$randomNumber.png', width: 200, height: 200),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: (){
              //write your code here to do when click button
              rollDice();
          }, 
          style: ElevatedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          child: const Text('Roll Dice', style: TextStyle(fontSize: 30, color: Colors.white))),
          ],
          ) ;
  }
}