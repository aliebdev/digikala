import 'package:flutter/material.dart';

import '../../../models/ads_model.dart';
import '../../../theme/app_spacings.dart';

class AdsWidget extends StatelessWidget {
  const AdsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppSpacings.l),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: AppSpacings.l,
        crossAxisSpacing: AppSpacings.l,
        childAspectRatio: 1.5,
      ),
      itemCount: AdsModel.items.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSpacings.l),
            image: DecorationImage(
              image: Image.asset(
                AdsModel.items[index].image,
                fit: BoxFit.cover,
              ).image,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
