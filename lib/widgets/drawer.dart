import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/about.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(backgroundColor: Colors.grey[850],
      child: ListView(  
        children: [
          SizedBox(height: 70),
          ListTile(leading: FaIcon(FontAwesomeIcons.music, color: Colors.white,), title: Text('MUSIC PLAYER', style: TextStyle(color: Colors.white,)), onTap:() => Navigator.of(context).pushReplacementNamed('/') ),
          ListTile(leading: FaIcon(FontAwesomeIcons.book, color: Colors.white,), title: Text('ABOUT', style: TextStyle(color: Colors.white,)), onTap:() => Navigator.of(context).pushReplacementNamed(About.routeName)),
        ]
      )
    );
  }
}