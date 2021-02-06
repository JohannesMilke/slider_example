import 'package:flutter/material.dart';
import 'package:slider_example/custom_slider_theme.dart';
import 'package:slider_example/utils.dart';
import 'package:slider_example/widget/slider/slider_label_widget.dart';

class SliderShapeWidget extends StatefulWidget {
  @override
  _SliderShapeWidgetState createState() => _SliderShapeWidgetState();
}

class _SliderShapeWidgetState extends State<SliderShapeWidget> {
  int indexSlider = 0;

  @override
  Widget build(BuildContext context) => CustomSliderTheme(
        child: buildSlider(),
      );

  Widget buildSlider() {
    final labels = ['0', '18', '30', '50', '+'];
    final double min = 0;
    final double max = labels.length - 1.0;
    final divisions = labels.length - 1;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Utils.modelBuilder(
              labels,
              (index, label) {
                final selectedColor = Colors.black;
                final unselectedColor = Colors.black.withOpacity(0.3);
                final isSelected = index <= indexSlider;
                final color = isSelected ? selectedColor : unselectedColor;

                return buildLabel(label: label, color: color, width: 30);
              },
            ),
          ),
        ),
        Slider(
          value: indexSlider.toDouble(),
          min: min,
          max: max,
          divisions: divisions,
          label: labels[indexSlider],
          onChanged: (value) =>
              setState(() => this.indexSlider = value.toInt()),
        ),
      ],
    );
  }

  Widget buildLabel({
    @required String label,
    @required double width,
    @required Color color,
  }) =>
      Container(
        width: width,
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ).copyWith(color: color),
        ),
      );
}
