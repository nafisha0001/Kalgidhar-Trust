import 'package:flutter/material.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';
// import 'package:kalgidhar_trust/screens/education.dart';

class SantIqbalSinghJi extends StatelessWidget {
  const SantIqbalSinghJi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 101, 125, 141),
          leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),

        ),
        drawer: CustomDrawer(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage('images/sisj.png'),
                      radius: 50.0,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sant Baba Iqbal Singh Ji',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'Sant Baba Iqbal Singh ji was the Founder President of The Kalgidhar Trust, The Kalgidhar Society Baru Sahib and The Chancellor of Eternal University. He was considered to be one of the most influential Sikhs in the world. He was awarded the Sikh Lifetime Achievement Award in 2016. In 2018 he was bestowed with Shiromani Panth Rattan (precious jewel of the Sikh community) by Takht Sri Harmandir Ji Patna Sahib. In 2022, he was conferred with the Padma Shri by the Government Of India for his contributions in the field of social work. Gurmat Smagam on the 96 Birthday of Padma Shri  Shiromani Sant baba Iqbal Singh ji held on 1 May 2022 at Guruduara Baru Sahib. Students of the department of Music Recited Shabad Kirtan on the Smagam. ',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
