import 'package:flutter/material.dart';

import '../../../models/product_model.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacings.xl),
            child: Text(
              "منتخب محصولات تخفیف و حراج",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Container(
            color: Colors.grey.shade200,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                childAspectRatio: .78,
              ),
              itemCount: ProductModel.items.length,
              itemBuilder: (BuildContext context, int index) {
                final offer = ProductModel.items[index];
                return ProductTile(offer: offer);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key, required this.offer}) : super(key: key);

  final ProductModel offer;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.xl),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            offer.image,
            height: 100,
            width: 100,
          ),
          const SizedBox(height: AppSpacings.m),
          Text(
            offer.title,
            style: Theme.of(context).textTheme.bodySmall,
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
        ],
      ),
    );
  }
}
