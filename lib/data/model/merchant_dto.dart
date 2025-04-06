import 'package:flutter/material.dart' show Color;

class MerchantDto {
  MerchantDto({this.merchantColor, this.merchantImage})
    : assert(
        (merchantColor == null) != (merchantImage == null),
        'Only one of merchantColor or merchantImage should be provided',
      );

  final Color? merchantColor;
  final String? merchantImage;
}
