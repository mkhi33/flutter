import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slider and Checks'),
        ),
        body: Column(children: [
          Slider.adaptive(
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
            max: 400,
            min: 50,
            activeColor: AppTheme.primary,
          ),
          // Checkbox(
          //     value: _sliderEnabled,
          //     onChanged: (value) {
          //       setState(() {
          //         _sliderEnabled = value ?? true;
          //       });
          //     }),
          // Switch(
          //     value: _sliderEnabled,
          //     onChanged: (value) => setState(() => {_sliderEnabled = value})),

          CheckboxListTile(
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            value: _sliderEnabled,
            onChanged: (value) =>
                setState(() => {_sliderEnabled = value ?? true}),
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Enable Slider'),
            value: _sliderEnabled,
            onChanged: (value) =>
                setState(() => {_sliderEnabled = value ?? true}),
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://eltallerdehector.com/wp-content/uploads/2022/08/Goku-saiyan-blue-png.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 50),
        ]));
  }
}
