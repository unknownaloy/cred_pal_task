import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/data/dummy_data.dart';
import 'package:cred_pal_task/widgets/item_card_ui.dart';
import 'package:cred_pal_task/widgets/persistent_header_ui.dart';
import 'package:cred_pal_task/widgets/search_header_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: AppColor.lavenderBlue10,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverPersistentHeader(
                floating: true,
                delegate: PersistentHeaderUi(
                  height: 76,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchHeaderUi(),
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 13),
                      child: SizedBox(
                        height: 174,
                        child: ListView.builder(
                          itemCount: rollOneItems.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final item = rollOneItems[index];
                            return ItemCardUi(item: item);
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 26),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, right: 13),
                      child: SizedBox(
                        height: 174,
                        child: ListView.builder(
                          itemCount: rollTwoItems.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            final item = rollTwoItems[index];
                            return ItemCardUi(item: item);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
