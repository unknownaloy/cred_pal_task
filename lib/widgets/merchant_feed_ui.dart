import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/core/resources/typography_res.dart'
    show fontBlack;
import 'package:cred_pal_task/data/dummy_data.dart';
import 'package:cred_pal_task/widgets/merchant_avatar_ui.dart';
import 'package:flutter/material.dart';

class MerchantFeedUi extends StatelessWidget {
  const MerchantFeedUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 33, horizontal: 20),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured Merchants',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: fontBlack,
                  color: AppColor.deepBlue10,
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Text(
                  'View all',
                  style: TextStyle(fontSize: 12, color: AppColor.blue10),
                ),
              ),
            ],
          ),

          const SizedBox(height: 37),

          Center(
            child: Wrap(
              spacing: 10,
              runSpacing: 51,
              children: List.generate(
                merchantsList.length,
                (index) => Builder(
                  builder: (context) {
                    final merchant = merchantsList[index];
                    return MerchantAvatarUi(merchant: merchant);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
