import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';
import '../../../utils/app_images.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacings.l,
          vertical: AppSpacings.m,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacings.m),
          color: AppColors.lightGrey100,
        ),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: AppColors.darkGrey200,
            ),
            const SizedBox(width: AppSpacings.l),
            Text(
              "جستجو در ",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.darkGrey100,
                  ),
            ),
            const SizedBox(width: AppSpacings.s),
            SvgPicture.network(
              AppImages.logo,
              width: 60,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
