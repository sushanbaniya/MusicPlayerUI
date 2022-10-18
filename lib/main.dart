import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './widgets/drawer.dart';
import './screens/about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player UI',
      home: HomePage(),
      // theme: ThemeData(
      //   primaryColor: Colors.purple,
      //   accentColor: Colors.black,
      // ),
      routes: {
        About.routeName: (ctx) => About(),
      }
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double soundLevel = 18;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text('Music Player'), backgroundColor: Colors.black),
      body: Column(
        children: [
          Row(
            children: [
              FaIcon(FontAwesomeIcons.chevronDown),
              SizedBox(width: MediaQuery.of(context).size.width - 40),
              FaIcon(FontAwesomeIcons.ellipsisVertical)
            ],
          ),
          SizedBox(height: 70),
          FaIcon(FontAwesomeIcons.compactDisc, size: 250),
          SizedBox(height: 30),
          Text('TITLE', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 10),
          Text('SINGER', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 40),
          Slider(value: 18, onChanged: (double newValue) {
            setState((){
              soundLevel = newValue;
            });
            
          }, min:0, max:100, activeColor: Colors.black, inactiveColor: Colors.black ),
          SizedBox(height: 40),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
            FaIcon(FontAwesomeIcons.backward),
            FaIcon(FontAwesomeIcons.play),
            FaIcon(FontAwesomeIcons.forward),
          ])
        ],
      ),
    );
  }
}
