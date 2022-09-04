import 'package:flutter/material.dart';

import '../../../models/digi_apps_model.dart';
import '../../../theme/app_colors.dart';

class DigiAppsWidget extends StatelessWidget {
  const DigiAppsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: DigiAppsModel.items.length + 1,
      itemBuilder: (BuildContext context, int index) {
        final app = DigiAppsModel
            .items[index == DigiAppsModel.items.length ? index - 1 : index];
        return index == DigiAppsModel.items.length
            ? Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: AppColors.lightGrey100,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.more_horiz,
                      color: AppColors.darkGrey100,
                    ),
                  ),
                  Text(
                    "بیشتر",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: AppColors.darkGrey200,
                        ),
                  ),
                ],
              )
            : DigiAppTile(app: app);
      },
    );
  }
}

class DigiAppTile extends StatelessWidget {
  const DigiAppTile({
    Key? key,
    required this.app,
  }) : super(key: key);

  final DigiAppsModel app;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          app.image,
          height: 50,
          width: 50,
        ),
        Text(
          app.title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.darkGrey200,
              ),
        ),
      ],
    );
  }
}
