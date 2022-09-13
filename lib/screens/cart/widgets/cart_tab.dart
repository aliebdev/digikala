import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';
import '../../../widgets/badge.dart';

class CartTab extends StatelessWidget {
  const CartTab({
    Key? key,
    required this.title,
    required this.count,
    required this.isSelected,
  }) : super(key: key);

  final String title;
  final String count;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          const SizedBox(width: AppSpacings.m),
          Badge(
            count: count,
            color: isSelected ? AppColors.mainRed : AppColors.lightGrey200,
          ),
        ],
      ),
    );
  }
}
