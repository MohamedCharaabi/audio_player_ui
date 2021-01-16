import 'package:flutter/material.dart';
import 'package:music_player_ui/constants/colors.dart';
import 'package:music_player_ui/navbar.dart';
import 'package:music_player_ui/playerControllers.dart';
import 'package:music_player_ui/slider.dart';

import 'albumArt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Circular'),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NavigationBar(),
          Container(
            height: height / 2.5,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AlbumArt();
              },
              itemCount: 3,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Gidget',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: darkPrimaryColor,
            ),
          ),
          Text(
            'The Free Nationals',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: darkPrimaryColor,
            ),
          ),
          SliderPlayer(),
          PlayerControllers(),
          SizedBox(
            height: height * 0.05,
          ),
        ],
      ),
    );
  }
}
