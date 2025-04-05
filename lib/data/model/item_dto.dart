class ItemDto {
  ItemDto({
    required this.imageUrl,
    required this.itemName,
    required this.itemPrice,
    required this.itemOriginalPrice,
    this.badgeData,
    this.badgeImage,
  }) : assert(
         (badgeData == null) != (badgeImage == null),
         'Exactly one of badgeData or badgeImage must be provided',
       );

  final String imageUrl;
  final String itemName;
  final num itemPrice;
  final num itemOriginalPrice;
  final BadgeData? badgeData;
  final String? badgeImage;
}

class BadgeData {
  const BadgeData({required this.title, required this.subtitle});

  final String title;
  final String subtitle;
}
