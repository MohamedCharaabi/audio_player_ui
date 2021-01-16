import 'package:flutter/material.dart';

import 'constants/colors.dart';

class SliderPlayer extends StatefulWidget {
  @override
  _SliderPlayerState createState() => _SliderPlayerState();
}

class _SliderPlayerState extends State<SliderPlayer> {
  double sliderValue = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        children: <Widget>[
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 5,
              thumbShape: RoundSliderThumbShape(
                enabledThumbRadius: 5,
              ),
            ),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
              min: 0,
              max: 20,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '00:00',
              ),
              Text('04:24'),
            ],
          )
        ],
      ),
    );
  }
}
