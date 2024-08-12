import 'package:flutter/material.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';
// import 'package:kalgidhar_trust/screens/education.dart';

class SantTejaSinghJi extends StatelessWidget {
  const SantTejaSinghJi({super.key});

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
                      backgroundImage: AssetImage('images/stsj.png'),
                      radius: 50.0,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sant Baba Teja Singh Ji',
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
                  'Sant Teja Singh Ji was born at Pohir, district Ludhiana, on 17 Jan. 1927 into the household of Sardar Ram Singh and Mata Sant Kaur. He completed his primary education from the village school. He learnt (to recite) the Gurbani and its recital (Kirtan) under the tutelage of Ghani Gyan Singh of Gurdwara Sahib, Mandi Ahmedgarh. After spending the early years of his youth in Calcutta, Syalkot and Mussouri, he returned to Pohir.\n  As a child he used to accompany the village congregation to Rara Sahib. But in 1948 he finally resolved to settle at Rara Sahib under the aegis and patronage of Sant Isher Singh Ji and undertook the devout services of the sanctum sanatorium. Delighted with his services the patron saint made him in charge (Shrimaan) of the community kitchen (Guru Ka Langar). He dispensed this service regularly for six years. He also served in the farm of Gurdwara Sahib for a brief spell.\n  Sant Teja Singh Ji has been keenly devoted to the Gurbani. Besides the ‘Banis’ of ‘Nitnem’ and ‘Panj Granthi’ he has learnt most of ‘Shri Dasam Granth Sahib’ by heart. Sant Isher Singh Ji used to be charmed by his recital of Gurbani. It was Sant Teja Singh Ji’s love for the Gurbani that brought him closer to Sant Isher Singh Ji. Besides reciting Gurbani to his patron and mentor, he prepared meals for him. He used to accompany his mentor and perform the ‘ardas’ at the termination of each congregation (The Diwan). After Sant Isher Singh Ji left for his heavenly abode, Sant Teja Singh Ji was entrusted upon the services of the ‘Bhora Sahib’, which he is performing hole heartedly to this day.On 10th January 1990, all the religious organizations, the chiefs of different Sikh communities, the sangat of the surrounding areas and Gurdwara Karamsar Rara Sahib Trust bestowed all the responsibilities of care and service of the Gurdwara upon Sant Teja Singh Ji. Despite spending most of his time in the Bhora Sahib (the privy chamber of Sant Isher Singh Ji) Sant Ji shouldered all the responsibilities of the Gurdwara Sahib perfectly with the co-operation of the ‘Gurdwara Karamsar Rara Sahib Trust’.',
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
