import 'package:cred_pal_task/core/resources/color_res.dart';
import 'package:cred_pal_task/core/resources/typography_res.dart';
import 'package:cred_pal_task/data/dummy_data.dart';
import 'package:cred_pal_task/widgets/home_header_ui.dart';
import 'package:cred_pal_task/widgets/item_card_ui.dart';
import 'package:cred_pal_task/widgets/merchant_avatar_ui.dart';
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
              const SliverAppBar(
                expandedHeight: 189,
                collapsedHeight: 189,
                backgroundColor: AppColor.purple20,
                flexibleSpace: HomeHeaderUi(),
              ),
              const SliverPersistentHeader(
                pinned: true,
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

                    const SizedBox(height: 17),

                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 33,
                          horizontal: 20,
                        ),
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
                                Text(
                                  'View all',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: AppColor.blue10,
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
                                      return MerchantAvatarUi(
                                        merchant: merchant,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
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
