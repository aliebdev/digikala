import 'package:flutter/material.dart';

import '../../../models/mobile_model.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';

class BasedOnYourViewsWidget extends StatelessWidget {
  const BasedOnYourViewsWidget(
      {Key? key, required this.title, required this.items})
      : super(key: key);

  final String title;
  final List<MobileModel> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacings.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "براساس بازدیدهای شما",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.darkGrey100,
                ),
          ),
          const SizedBox(height: AppSpacings.xl),
          Container(
            // margin: const EdgeInsets.all(AppSpacings.xl),
            color: Colors.grey.shade300,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                final mobile = items[index];
                return Container(
                  padding: const EdgeInsets.all(AppSpacings.xl),
                  color: Colors.white,
                  child: Image.asset(mobile.image),
                );
              },
            ),
          ),
          const SizedBox(height: AppSpacings.xl),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "مشاهده بیش از ۳۰۰ کالا",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.mainRed,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const Icon(
                Icons.chevron_right,
                size: 25,
                color: AppColors.mainRed,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
