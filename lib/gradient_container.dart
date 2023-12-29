import 'package:flutter/material.dart';
import 'package:udemycourse/dice_roller.dart';
//import 'package:udemycourse/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.theme1, this.theme2, {super.key});

  final Color theme1;
  final Color theme2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme1,
              theme2,
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(child: DiceRoller()));
  }
}
