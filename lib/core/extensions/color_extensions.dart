import 'package:flutter/material.dart' show Color;

extension ColorX on Color {
  Color withOpacityValue(double value) {
    return withAlpha((255 * value).toInt());
  }
}
