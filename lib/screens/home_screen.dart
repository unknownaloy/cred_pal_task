import 'package:cred_pal_task/widgets/persistent_header_ui.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1F3FE),
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
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(16),
                            child: SvgIconUi(searchIcon),
                          ),
                          hintText: widget.hintText,
                          hintStyle: Theme.of(
                            context,
                          ).textTheme.bodyLarge?.copyWith(
                            height: 22 / 16,
                            color: AppColor.grayScale30,
                          ),
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
