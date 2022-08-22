import 'package:flutter/material.dart';

import '../../../theme/app_spacings.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.width / 2.7,
      margin: const EdgeInsets.all(AppSpacings.xl),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacings.xl),
        image: DecorationImage(
          image: Image.asset(image).image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
