import 'package:flutter/material.dart';

class SliderSizeWidget extends StatefulWidget {
  @override
  _SliderSizeWidgetState createState() => _SliderSizeWidgetState();
}

class _SliderSizeWidgetState extends State<SliderSizeWidget> {
  double value = 50;

  @override
  Widget build(BuildContext context) => SliderTheme(
        data: SliderThemeData(
          trackHeight: 16,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30),

          /// ticks in between
          activeTickMarkColor: Colors.transparent,
          inactiveTickMarkColor: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: Slider(
                value: value,
                min: 0,
                max: 100,
                divisions: 20,
                label: value.round().toString(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
            const SizedBox(height: 16),
            Slider(
              value: value,
              min: 0,
              max: 100,
              divisions: 20,
              label: value.round().toString(),
              onChanged: (value) => setState(() => this.value = value),
            ),
          ],
        ),
      );
}
