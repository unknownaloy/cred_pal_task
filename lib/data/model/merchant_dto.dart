import 'package:flutter/material.dart' show Color;

class MerchantDto {
  MerchantDto({
    required this.merchantName,
    required this.isActive,
    this.merchantColor,
    this.merchantImage,
    this.merchantLogo,
  }) : assert(
         (merchantColor == null) != (merchantImage == null),
         'Only one of merchantColor or merchantImage should be provided',
       ),
       assert(
         merchantColor == null || merchantLogo != null,
         'merchantLogo must be provided when merchantColor is provided',
       );

  final String merchantName;
  final bool isActive;
  final Color? merchantColor;
  final String? merchantImage;
  final String? merchantLogo;
}
