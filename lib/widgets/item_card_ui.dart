import 'package:cred_pal_task/core/extensions/color_extensions.dart';
import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/data/model/item_dto.dart';
import 'package:flutter/material.dart';

class ItemCardUi extends StatelessWidget {
  const ItemCardUi({required this.item, super.key});

  final ItemDto item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      width: 161,
      margin: const EdgeInsets.only(left: 24),
      padding: const EdgeInsets.only(top: 6, bottom: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 10,
            color: Colors.black.withOpacityValue(.05),
          ),
        ],
      ),
      child: Stack(
        children: [
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  constraints: const BoxConstraints(maxHeight: 96),
                  child: Image.asset(item.imageUrl),
                ),

                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        item.itemName,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: RichText(
                        text: TextSpan(
                          text: '${item.itemPrice}',
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: AppColor.blue10,
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: '   '),
                            TextSpan(
                              text: '${item.itemOriginalPrice}',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.lavenderBlue40,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Positioned(
            left: 6,
            top: 6,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 10,
                    color: Colors.black.withOpacityValue(.05),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
