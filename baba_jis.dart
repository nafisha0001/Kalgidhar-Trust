import 'package:flutter/material.dart';

class Babaji extends StatelessWidget {
  final ImageProvider image;
  final String text;
  final String target;

  const Babaji({required this.image, required this.target, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: image,
          radius: 40.0,
        ),
        SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, target),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}