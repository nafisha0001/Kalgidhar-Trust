import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:kalgidhar_trust/functionality/drawer.dart';
import 'package:kalgidhar_trust/functionality/education_tabs.dart';

class EducationScreen extends StatelessWidget {
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
          'Education',
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
              SizedBox(
                height: 1.0,
                width: double.infinity,
                child: Divider(
                  color: Colors.white,
                  thickness: 10.0,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Making Value-Based \n Education-Valuable',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'The program is focused on promoting value-based quality education and spiritual uplift. We have an obligation to be empathetic, principled and considerate, even in our pursuit of material gratification. A compassionate mind and sustainable lifestyle is nurtured through knowledge and action that works in synchronicity with good human values.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 32.0),
              Text(
                'With a strong foothold in school education, the Kalgidhar Society took the next step and established universities to provide higher education to children so that they chart their professional journeys. The Society has two universities under higher education, namely, Eternal University, Baru Sahib and Akal University, Talwandi Sabo.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 16.0),
              
              Education_tabs(
                title: 'Rural Education', 
                onPressed: _launchRuralEducationURL,
              ),

              SizedBox(height: 16.0),

              Education_tabs(
                title: 'Higher Education', 
                onPressed: _launchHigherEducationURL,
              ),

              
              SizedBox(height: 16.0),

              Education_tabs(
                title: 'Akal Academies', 
                onPressed: _launchAkalAcademiesURL,
              ),

              SizedBox(height: 16.0),

              Education_tabs(
                title: 'IB School', 
                onPressed: _launchIBSchoolURL,
              ),
              
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch URL for Rural Education
  _launchRuralEducationURL() async {
    const url =
        'https://barusahib.org/our-programs/rural-education-revolution/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to launch URL for Higher Education
  _launchHigherEducationURL() async {
    const url = 'https://barusahib.org/our-programs/higher-education/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to launch URL for Akal Academies
  _launchAkalAcademiesURL() async {
    const url = 'https://www.akalacademy.in/our-academies/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Function to launch URL for IB School
  _launchIBSchoolURL() async {
    const url = 'https://www.akalacademybarusahib.com/baru-sahib/#';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
