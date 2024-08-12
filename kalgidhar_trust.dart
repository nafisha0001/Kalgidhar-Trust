import 'package:flutter/material.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';

class KalgidharTrust extends StatelessWidget {
  const KalgidharTrust({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(          
          centerTitle: true,
          title: Text(
            'Kalgidhar Trust',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30
            ),
          ),
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

          backgroundColor: Color.fromARGB(255, 101, 125, 141),
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
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage('images/kalgidhar_logo.png'),
                      radius: 80.0,
                    ),
                  ],
                ),
                SizedBox(height: 16.0),
                Text(
                  'The Kalgidhar trust is a non-profit charitable organization focused on providing quality education to fight against the alarming rise in drugs and alcohol abuse, with equal stress on healthcare, women empowerment and Social welfare. The organisation has been instrumental in the socio-economy uplift of the poor in the far flung rural areas of North India. Today the rural areas of punjab, haryana, uttar pradesh, rajasthan and himachal pradesh and are dotted with 129 low cost CBSE schools, providing modern, value based education to around 70,000 students. The students are mostly from deprived sections of society, admitted regardless of caste, creed, region and social status. The aim is to build a total 500 low caste schools to provide value based education to all children at the village level. The Kalgidhar Trust, Baru Sahib also runs two private universities, Technical training centres to empower 2000 rural girls, one hospital with 280 beds, two de-addiction centres, one orphanage, one old age home and one rehabilitation Centre for distressed women apart from organising for free medical/surgery camps for the poor in the hilly areas of Sirmaur, Himachal Pradesh.\nRead more...',
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