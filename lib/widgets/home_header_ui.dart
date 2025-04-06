import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/core/resources/icon_res.dart' show alertIcon;
import 'package:cred_pal_task/core/resources/typography_res.dart';
import 'package:cred_pal_task/widgets/svg_icon_ui.dart';
import 'package:flutter/material.dart';

class HomeHeaderUi extends StatelessWidget {
  const HomeHeaderUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 20, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Pay later\neverywhere',
                style: TextStyle(
                  fontSize: 28,
                  color: AppColor.black10,
                  fontFamily: fontBlack,
                ),
              ),
              SizedBox(width: 7),
              Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: SvgIconUi(alertIcon),
                ),
              ),
            ],
          ),

          const SizedBox(width: 16),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Shopping Limit ₦0',
                style: TextStyle(fontSize: 12, color: AppColor.deepBlue30),
              ),
              const SizedBox(height: 10),

              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 16,
                  ),
                  decoration: const BoxDecoration(
                    color: AppColor.blue10,
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                  ),
                  child: const Text(
                    'Activate Credit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontFamily: fontBold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
