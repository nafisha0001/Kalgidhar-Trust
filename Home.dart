import 'package:flutter/material.dart';
import 'package:kalgidhar_trust/functionality/programButton.dart';
import 'package:kalgidhar_trust/functionality/baba_jis.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF8ED2F9),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 40.0,
              left: 10.0,
              right: 30.0,
              bottom: 30.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [                    
                    Babaji(
                      image: AssetImage('images/sasj.png'), 
                      target: 'SASJ', 
                      text: 'Sant Baba Attar\nSingh Ji',
                    ),

                    Babaji(
                      image: AssetImage('images/stsj.png'), 
                      target: 'STSJ' ,
                      text: 'Sant Baba Teja\nSingh Ji',
                    ),

                    Babaji(
                      image: AssetImage('images/sisj.png'), 
                      target: 'SISJ', 
                      text: 'Sant Baba Iqbal\nSingh Ji',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Kalgidhar Trust',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                SizedBox(
                  height: 20.0,
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'kalgidharTrust');
                  },
                  child: Text(
                    'The Kalgidhar trust is a humanitarian charity organization that primarily builds educational institute.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
                ]
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 40
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Our Program',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, 
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'education');
                        },
                        child: ProgramButton(
                          icon: Icon(
                            Icons.cast_for_education_rounded,
                            size: 50.0,
                            color: Colors.black,
                          ), 
                          text: 'Education'
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'drug');
                        },
                        child: ProgramButton(
                          icon: Icon(
                            Icons.medical_services,
                            size: 50.0,
                            color: Colors.black,
                          ), 
                          text: 'De-Addiction'
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 40,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'women');
                        },
                        child: ProgramButton(
                          icon: Icon(
                            Icons.woman,
                            size: 50.0,
                            color: Colors.black,
                          ), 
                          text: 'Women\nEmpowerment',
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'employment');
                        },
                        child: ProgramButton(
                          icon: Icon(
                            Icons.work,
                            size: 50.0,
                            color: Colors.black,
                          ), 
                          text: 'Akal\nEmployment',
                        ),
                      ),                      
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
