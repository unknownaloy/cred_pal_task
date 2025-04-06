import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/data/model/merchant_dto.dart';
import 'package:flutter/material.dart';

class MerchantAvatarUi extends StatelessWidget {
  const MerchantAvatarUi({required this.merchant, super.key});

  final MerchantDto merchant;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                alignment: Alignment.center,
                padding:
                    merchant.merchantLogo != null
                        ? const EdgeInsets.all(8)
                        : EdgeInsets.zero,
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:
                      merchant.merchantLogo != null
                          ? merchant.merchantColor
                          : null,
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  merchant.merchantLogo != null
                      ? merchant.merchantLogo!
                      : merchant.merchantImage!,
                ),
              ),

              if (merchant.isActive) ...[
                Positioned(
                  top: 0,
                  right: 2,
                  child: Container(
                    padding: const EdgeInsets.all(3),
                    height: 15,
                    width: 15,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.green10,
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),

          const SizedBox(height: 5),

          Text(
            merchant.merchantName,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: AppColor.black10,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
