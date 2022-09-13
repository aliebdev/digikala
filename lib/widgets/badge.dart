import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacings.dart';

class Badge extends StatelessWidget {
  const Badge({
    Key? key,
    this.size = const Size(20, 20),
    required this.count,
    this.color = AppColors.mainRed,
  }) : super(key: key);

  final Size size;
  final String count;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSpacings.s),
      ),
      child: Text(
        count,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
