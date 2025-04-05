class ItemDto {
  ItemDto({
    required this.imageUrl,
    required this.itemName,
    required this.itemPrice,
    required this.itemOriginalPrice,
  });

  final String imageUrl;
  final String itemName;
  final num itemPrice;
  final num itemOriginalPrice;
}
