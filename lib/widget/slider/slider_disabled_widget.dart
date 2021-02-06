import 'package:flutter/material.dart';

class SliderDisabledWidget extends StatefulWidget {
  @override
  _SliderDisabledWidgetState createState() => _SliderDisabledWidgetState();
}

class _SliderDisabledWidgetState extends State<SliderDisabledWidget> {
  double value = 50;

  @override
  Widget build(BuildContext context) => SliderTheme(
        data: SliderThemeData(
          /// track color
          disabledActiveTrackColor: Colors.blue.shade100,
          disabledInactiveTrackColor: Colors.black12,

          /// thumb color
          disabledThumbColor: Colors.blue.shade200,

          /// ticks color in between
          disabledInactiveTickMarkColor: Colors.transparent,
          disabledActiveTickMarkColor: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 20,
              label: value.round().toString(),
              onChanged: null,
            ),
            const SizedBox(height: 16),
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 20,
              label: value.round().toString(),
              onChanged: null,
            ),
          ],
        ),
      );
}
