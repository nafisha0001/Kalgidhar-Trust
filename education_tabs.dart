import 'package:flutter/material.dart';

class Education_tabs extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const Education_tabs({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
                shadowColor: Colors.pink,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.teal,
                  ),
                  title: Text(
                    title,
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  trailing: TextButton(
                    onPressed: onPressed,
                    child: Text(
                      'Read More',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              );
  }
}