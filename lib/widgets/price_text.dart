import 'package:digikala/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    Key? key,
    required this.price,
    this.color = AppColors.black,
  }) : super(key: key);

  final String price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: color,
              ),
        ),
        Image.asset("assets/images/toman.png"),
      ],
    );
  }
}
