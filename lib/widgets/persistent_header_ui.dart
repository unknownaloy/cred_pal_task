import 'package:flutter/material.dart';

class PersistentHeaderUi extends SliverPersistentHeaderDelegate {
  const PersistentHeaderUi({
    required this.child,
    this.height = kToolbarHeight,
    this.backgroundColor = Colors.white,
  });

  final Widget child;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: backgroundColor,
      width: double.infinity,
      height: height,
      child: child,
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
