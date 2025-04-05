import 'package:cred_pal_task/core/resources/color_res.dart';
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
      child: const Scaffold(
        backgroundColor: AppColor.lavenderBlue10,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                delegate: PersistentHeaderUi(
                  height: 76,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: SearchHeaderUi(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
