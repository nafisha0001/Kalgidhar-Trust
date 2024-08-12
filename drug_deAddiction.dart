import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';

class DrugDeAddictionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        centerTitle: true,
        title: Text(
          'Drug De-addiction',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30
          ),
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
                  Text(
                    'Restoring Health and\nHappiness through Divinity\n & Loving Medical Care',
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
                'The stupendous 80% success rate is believed to be the result of the spiritual atmosphere prevailing here. The treatment is done through yoga sessions and daily meditation. Emphasis is laid to turn their maximum attention towards spirituality. Medicines are used to a very lesser extent.We have two drug de-addiction centers.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: (){
                  _launchDrugURL();
                }, 
                child: Text(
                  'Read more'
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch URL for drug de-addiction
  _launchDrugURL() async {
    const url = 'https://barusahib.org/our-programs/drug-and-alcohol-rehabilitation-center/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
