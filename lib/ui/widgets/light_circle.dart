import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Widget for drawing a circular color shapes, to represent lights
class LightCircle extends StatelessWidget {
  final List<Color> colors;

  LightCircle({this.colors});

  @override
  Widget build(BuildContext context) {
    //if (colors.length >= 1) {
    //  colors.add(Colors.transparent);
    //}

    return Stack(alignment: Alignment.center, children: [_border(), _createColorGradient()]);
  }

  Widget _createColorGradient() {
    if (colors.length == 0) {
      return _colorGradientNoColors();
    } else if (colors.length == 1) {
      return _colorGradientOneColor();
    } else {
      return _colorGradientMultipleColors();
    }
  }

  Widget _colorGradientNoColors() {
    return Container(
      height: 50,
      width: 50,
      child: Center(child: Icon(Icons.lightbulb_outline)),
    );
  }

  Widget _colorGradientOneColor() {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      transform: Matrix4.identity()..scaleAdjoint(0.4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colors.first,
      ),
      child: Center(
        child: Icon(
          Icons.lightbulb_outline,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _colorGradientMultipleColors() {
    return Container(
      height: 50,
      width: 50,
      //color: Colors.blueGrey,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: colors.take(3).toList(), center: Alignment(0.0, 0.0), radius: 0.7, focalRadius: 0.3),
      ),
      child: Center(
        child: Icon(
          Icons.lightbulb_outline,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _border() {
    if (colors.length == 0) {
      return Container();
    }

    return Container(
      height: 60,
      width: 60,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        border: Border.all(color: _borderColor(), width: 5),
        shape: BoxShape.circle,
      ),
    );
  }

  Color _borderColor() {
    return colors.first.withOpacity(0.3);
  }
}
