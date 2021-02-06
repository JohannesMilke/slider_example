import 'package:flutter/material.dart';
import 'package:slider_example/widget/slider/slider_color_widget.dart';
import 'package:slider_example/widget/slider/slider_cupertino_widget.dart';
import 'package:slider_example/widget/slider/slider_disabled_widget.dart';
import 'package:slider_example/widget/slider/slider_label_widget.dart';
import 'package:slider_example/widget/slider/slider_shape_widget.dart';
import 'package:slider_example/widget/slider/slider_size_widget.dart';
import 'package:slider_example/widget/slider/slider_vertical_widget.dart';
import 'package:slider_example/widget/tabbar_widget.dart';

class SliderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: 'Sliders',
        tabs: [
          Tab(icon: Icon(Icons.color_lens), text: 'Colors'),
          Tab(icon: Icon(Icons.photo_size_select_large), text: 'Size'),
          Tab(icon: Icon(Icons.text_fields), text: 'Labels'),
          Tab(icon: Icon(Icons.format_shapes), text: 'Shape'),
          Tab(icon: Icon(Icons.invert_colors_on_sharp), text: 'Cupertino'),
          Tab(icon: Icon(Icons.clear), text: 'Disabled'),
          Tab(icon: Icon(Icons.vertical_align_bottom_sharp), text: 'Vertical'),
        ],
        children: [
          SliderColorWidget(),
          SliderSizeWidget(),
          SliderLabelWidget(),
          SliderShapeWidget(),
          SliderCupertinoWidget(),
          SliderDisabledWidget(),
          SliderVerticalWidget(),
        ].map((child) => Center(child: child)).toList(),
      );
}
