import 'package:flutter/material.dart';
import 'dart:math';

class ImmutableWidget extends StatelessWidget{
  const ImmutableWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          radius: 0.6,
          colors: [
            Color.fromARGB(255, 140, 201, 70),
            Color.fromARGB(255, 39, 106, 41),
          ]
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(80),
        child: Transform.rotate(
          angle: pi/4, 
          child: Container(
            decoration: BoxDecoration(
              gradient: const RadialGradient(
                colors: [
                  Colors.purpleAccent,
                  Color.fromARGB(255, 147, 34, 167),
                ],
                ),
                borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                    spreadRadius: 10,
                    blurRadius: 20,
                    offset: const Offset(8, 20),
                  ),
                ],
            ),
   
          child: Padding(
            padding: const EdgeInsets.all(50.0),
             child:_buildShinyCircle(),
            ),
          ),
        ),     
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blueAccent,
          ],
          center: Alignment(-0.3, -0.5),
        ),
        boxShadow: [
          BoxShadow(blurRadius: 20),
        ],
      ),
    );
  }
}
