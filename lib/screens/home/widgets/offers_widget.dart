import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 2.32,
      padding: const EdgeInsets.symmetric(vertical: AppSpacings.xxl),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.lightRed,
            AppColors.mainRed,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            ProductModel.items.length + 2,
            (index) {
              final offer = ProductModel.items[index < 3 ? index : index - 2];
              return index == 0
                  ? FirstOfferTile(size: size)
                  : index == ProductModel.items.length + 1
                      ? Container(
                          padding: const EdgeInsets.all(AppSpacings.l),
                          margin: const EdgeInsets.only(
                            right: AppSpacings.m,
                            left: AppSpacings.m,
                          ),
                          width: size.width / 2.8,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(AppSpacings.m),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.arrow_circle_left_outlined,
                                color: AppColors.mainRed,
                                size: 50,
                              ),
                              Text(
                                "مشاهده همه",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                        )
                      : OfferTile(offer: offer);
            },
          ),
        ),
      ),
    );
  }
}

class FirstOfferTile extends StatelessWidget {
  const FirstOfferTile({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.l),
      margin: const EdgeInsets.only(right: AppSpacings.m),
      width: size.width / 2.8,
      decoration: BoxDecoration(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacings.m),
      ),
      child: Column(
        children: [
          Column(
            children: [
              const Text(
                "پیشنهاد\nشگفت\nانــگــیـــز",
                // textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Morabba",
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              Image.asset("assets/images/box.png"),
            ],
          ),
          // const SizedBox(height: AppSpacings.xxxl),
          const Spacer(),
          Row(
            children: [
              Text(
                "مشاهده همه",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Colors.white,
                    ),
              ),
              const Icon(
                Icons.chevron_right_rounded,
                color: Colors.white,
                size: 16,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class OfferTile extends StatelessWidget {
  const OfferTile({
    Key? key,
    required this.offer,
  }) : super(key: key);

  final ProductModel offer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(AppSpacings.l),
      margin: const EdgeInsets.only(right: AppSpacings.m),
      width: size.width / 2.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppSpacings.m),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "شگفت انگیز اختصاصی اپ",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.mainRed,
                  fontSize: 11,
                ),
          ),
          const SizedBox(height: AppSpacings.m),
          Image.network(offer.image),
          const SizedBox(height: AppSpacings.m),
          Text(
            offer.title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 12,
                ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: AppSpacings.l),
          if (offer.isAvailable)
            Row(
              children: [
                const Icon(
                  Icons.check,
                  size: 15,
                  color: AppColors.blue,
                ),
                Text(
                  "موجود در انبار دیجی کالا",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 10,
                        color: AppColors.darkGrey100,
                      ),
                ),
              ],
            )
          else
            Text(
              "تنها ۳ عدد در انبار باقیست",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 10,
                    color: AppColors.mainRed,
                  ),
            ),
          const SizedBox(height: AppSpacings.l),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacings.m,
                  vertical: 2,
                ),
                decoration: BoxDecoration(
                  color: AppColors.mainRed,
                  borderRadius: BorderRadius.circular(AppSpacings.xxl),
                ),
                child: Text(
                  offer.discount,
                  style: const TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    offer.price,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    offer.previousPrice,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 11,
                          color: AppColors.lightGrey200,
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                ],
              ),
              const SizedBox(width: AppSpacings.s),
              Image.asset("assets/images/toman.png"),
            ],
          ),
          const SizedBox(height: AppSpacings.l),
          const Text(
            "19 : 11 : 11",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 14,
              color: AppColors.lightGrey200,
            ),
          ),
        ],
      ),
    );
  }
}
