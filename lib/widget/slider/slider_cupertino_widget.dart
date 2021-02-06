import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderCupertinoWidget extends StatefulWidget {
  @override
  _SliderCupertinoWidgetState createState() => _SliderCupertinoWidgetState();
}

class _SliderCupertinoWidgetState extends State<SliderCupertinoWidget> {
  double value = 50;

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: CupertinoSlider(
          min: 0,
          max: 100,
          divisions: 20,
          // activeColor: Colors.red.shade500,
          // thumbColor: Colors.red,
          onChanged: (value) => setState(() => this.value = value),
          onChangeStart: (value) => print('Started dragging...'),
          onChangeEnd: (value) => print('Finished dragging...'),
          value: value,
        ),
      );
}
