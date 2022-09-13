import 'package:flutter/material.dart';

import '../../../models/category_model.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';
import '../../../widgets/app_spacer.dart';
import '../screens/home/widgets/custom_appbar.dart';
import 'widgets/popular_brands_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: CategoryModel.items
                  .map(
                    (category) => CategoryTile(category: category),
                  )
                  .toList(),
            ),
            const AppSpacer(),
            const PopularBrandsWidget(),
            const AppSpacer(height: AppSpacings.xl),
            Container(
              padding: const EdgeInsets.all(AppSpacings.xl),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const Text(
                          "سفارش شما به <اهواز> ارسال میشود، امکان خرید، هزینه و شیوه ارسال کالاها بر این اساس محاسبه میشود.",
                        ),
                        const SizedBox(height: AppSpacings.l),
                        Row(
                          children: [
                            Text(
                              "تغییر محل آدرس",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color: AppColors.blue,
                                  ),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_left,
                              color: AppColors.blue,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: AppSpacings.xl),
                  Expanded(
                    child: Image.network(
                      "https://www.citypng.com/public/uploads/preview/delivery-truck-logistics-cargo-freight-vector-icon-21635365527obrxpofacd.png",
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({Key? key, required this.category}) : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacings.l),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(category.title),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "مشاهده همه",
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          color: AppColors.blue,
                        ),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacings.m,
              vertical: AppSpacings.l,
            ),
            child: Row(
              children: category.subCategories
                  .map(
                    (subCategory) => SubCategoryTile(subCategory: subCategory),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class SubCategoryTile extends StatelessWidget {
  const SubCategoryTile({Key? key, required this.subCategory})
      : super(key: key);

  final SubCategory subCategory;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.m),
      margin: const EdgeInsets.symmetric(horizontal: AppSpacings.s),
      width: MediaQuery.of(context).size.width / 4,
      decoration: BoxDecoration(
        color: AppColors.lightGrey100,
        borderRadius: BorderRadius.circular(AppSpacings.l),
      ),
      child: Column(
        children: [
          Image.network(
            subCategory.image,
            height: 70,
            width: 70,
          ),
          const SizedBox(height: AppSpacings.l),
          Text(
            subCategory.title,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.darkGrey200,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 11,
                ),
          ),
          const SizedBox(height: AppSpacings.m),
          Text(
            subCategory.count,
            style: Theme.of(context).textTheme.labelMedium!.copyWith(
                  color: AppColors.darkGrey100,
                  overflow: TextOverflow.ellipsis,
                  fontSize: 10,
                ),
          ),
        ],
      ),
    );
  }
}
