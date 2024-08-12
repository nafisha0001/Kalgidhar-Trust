import 'package:flutter/material.dart';

class ProgramButton extends StatelessWidget {
  final Icon icon;
  final String text;
  const ProgramButton({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFFF9F8F8),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(
              0.0,
              0.0,
            ),
            blurRadius: 5.0,
            spreadRadius: 0.5,
          ),
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: icon,
          ),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}