import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 100,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 101, 125, 141),
              ),
              child: Text(
                'Kalgidhar Trust',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, 'home');
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Row(
              children: [
                Text('Our Programs'),
                SizedBox(width: 8),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    items: [
                      DropdownMenuItem(
                        value: 'item1',
                        child: Text('Education'),
                      ),
                      DropdownMenuItem(
                        value: 'item2',
                        child: Text('Drug De-addiction'),
                      ),
                      DropdownMenuItem(
                        value: 'item3',
                        child: Text('Women Empowerment'),
                      ),
                      DropdownMenuItem(
                        value: 'item4',
                        child: Text('Akal Employment'),
                      ),
                    ],
                    onChanged: (value) {
                      switch (value) {
                        case 'item1':
                          Navigator.pushNamed(context, 'education');
                          break;
                        case 'item2':
                          Navigator.pushNamed(context, 'drug');
                          break;
                        case 'item3':
                          Navigator.pushNamed(context, 'women');
                          break;
                        case 'item4':
                          Navigator.pushNamed(context, 'employment');
                          break;
                      }
                    },
                  ),
                ),
              ],
            ),
            onTap: (){
              
            },
          ),
          ListTile(
            leading: Icon(Icons.volunteer_activism),
            title: Text('Donate'),
            onTap: () {
              _launchDonateURL();
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact Us'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }


  // Function to launch URL for donation page
  _launchDonateURL() async {
    const url = 'https://barusahib.org/donate/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
