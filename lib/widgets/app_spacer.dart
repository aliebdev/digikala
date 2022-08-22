import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacings.dart';

class AppSpacer extends StatelessWidget {
  const AppSpacer({
    Key? key,
    this.height = AppSpacings.xxl,
    this.color = AppColors.lightGrey100,
  }) : super(key: key);

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      color: color,
    );
  }
}
