import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/core/resources/icon_res.dart' show searchIcon;
import 'package:cred_pal_task/widgets/persistent_header_ui.dart';
import 'package:cred_pal_task/widgets/svg_icon_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blue10,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: PersistentHeaderUi(
                height: 76,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColor.blue10,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(10),
                              child: SvgIconUi(searchIcon, height: 18),
                            ),
                            hintText: 'Search for products or stores',
                            hintStyle: TextStyle(
                              fontSize: 12,
                              color: Color(0xff9494B8),
                            ),
                            constraints: BoxConstraints(maxHeight: 40),
                          ),
                        ),
                      ),

                      const SizedBox(width: 20),

                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
