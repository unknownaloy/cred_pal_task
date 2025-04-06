import 'package:cred_pal_task/core/extensions/color_extensions.dart';
import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/core/resources/icon_res.dart'
    show scanIcon, searchIcon;
import 'package:cred_pal_task/widgets/svg_icon_ui.dart';
import 'package:flutter/material.dart';

class SearchHeaderUi extends StatelessWidget {
  const SearchHeaderUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            style: const TextStyle(fontSize: 12, color: Colors.black),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.lavenderBlue10.withOpacityValue(.8),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12),
                child: SvgIconUi(searchIcon, height: 18),
              ),
              hintText: 'Search for products or stores',
              hintStyle: const TextStyle(
                fontSize: 12,
                color: AppColor.lavenderBlue20,
              ),
              constraints: const BoxConstraints(maxHeight: 40),
              isDense: true,
            ),
          ),
        ),

        const SizedBox(width: 20),

        Container(
          alignment: Alignment.center,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            color: AppColor.lavenderBlue30.withOpacityValue(.8),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: const SvgIconUi(scanIcon),
        ),
      ],
    );
  }
}
