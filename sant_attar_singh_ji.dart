import 'package:flutter/material.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';
// import 'package:kalgidhar_trust/screens/education.dart';

class SantAttarSinghJi extends StatelessWidget {
  const SantAttarSinghJi({super.key});

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
                      backgroundImage: AssetImage('images/sasj.png'),
                      radius: 50.0,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sant Baba Attar Singh Ji',
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
                  'Sant Attar Singh Ji of Mastuana is one of the True Saints, who preached the Sikh Religion from place to place throughout India.\nSant Atar Singh of Mastuana, the most charismatic figure in latter-day Sikh piety, was born on 13 March 1866 in the village of Chima, in Sangrur district of Punjab. He was the son of Lal Singh, the village headman. Atar Singh was married in 1885 to Bishan Kaur of Todarpur, a village near Samrala.',
                  style: const TextStyle(
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
