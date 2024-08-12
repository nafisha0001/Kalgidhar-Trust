import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';

class AkalEmploymentScreen extends StatelessWidget {
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
          'Akal Employment',
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
                    'Delivering Quality \n Healthcare in Remote Areas',
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
                'Free-of-cost healthcare facilities are provided to underprivileged rural and hilly people, locally at their doorsteps. Catering to the medical needs of patients covering an area of a radius of 100Km. Hospital catering to the medical needs of Sirmaur district which is one of the most backward district of Himachal Pradesh.',
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

  // Function to launch URL for employment
  _launchDrugURL() async {
    const url = 'https://barusahib.org/our-programs/drug-and-alcohol-rehabilitation-center/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}