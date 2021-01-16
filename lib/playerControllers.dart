import 'package:flutter/material.dart';

import 'constants/colors.dart';

class PlayerControllers extends StatefulWidget {
  @override
  _PlayerControllersState createState() => _PlayerControllersState();
}

class _PlayerControllersState extends State<PlayerControllers> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Controls(
          icon: Icons.repeat,
        ),
        Controls(
          icon: Icons.skip_previous,
        ),
        PlayControl(),
        Controls(icon: Icons.skip_next),
        Controls(
          icon: Icons.shuffle,
        ),
      ],
    );
  }
}

class PlayControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
        color: primaryColor,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: darkPrimaryColor.withOpacity(0.5),
                      offset: Offset(5, 10),
                      spreadRadius: 3,
                      blurRadius: 10),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-3, -4),
                    spreadRadius: -2,
                    blurRadius: 20,
                  ),
                ],
                color: darkPrimaryColor,
                shape: BoxShape.circle,
              ),
//              child: Icon(icon),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: darkPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget {
  final IconData icon;

  Controls({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: darkPrimaryColor.withOpacity(0.5),
              offset: Offset(5, 10),
              spreadRadius: 3,
              blurRadius: 10),
          BoxShadow(
            color: Colors.white,
            offset: Offset(-3, -4),
            spreadRadius: -2,
            blurRadius: 20,
          ),
        ],
        color: primaryColor,
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: darkPrimaryColor.withOpacity(0.5),
                        offset: Offset(5, 10),
                        spreadRadius: 3,
                        blurRadius: 10),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -4),
                      spreadRadius: -2,
                      blurRadius: 20,
                    ),
                  ]),
//              child: Icon(icon),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 30,
                  color: darkPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
