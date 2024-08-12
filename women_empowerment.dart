import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';

class WomenEmpowermentScreen extends StatelessWidget {
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
          'Women Empowerment',
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
                    'Empowering Women \n For Building Nation',
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
                'The Kalgidhar Society has introduced this program AIRWE which provides education and employment opportunities to women so that they can lead a respectable and independent life. In addition to that, rehabilitation of women in very vulnerable situations so that they can lead a life of dignity.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: (){
                  _launchEmpowermentURL();
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

  // Function to launch URL for women employment
  _launchEmpowermentURL() async {
    const url = 'https://barusahib.org/our-programs/women-empowerment/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
