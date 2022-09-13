import 'package:flutter/material.dart';

import '../../../../models/category_model.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_spacings.dart';

class PopularBrandsWidget extends StatefulWidget {
  const PopularBrandsWidget({Key? key}) : super(key: key);

  @override
  State<PopularBrandsWidget> createState() => _PopularBrandsWidgetState();
}

class _PopularBrandsWidgetState extends State<PopularBrandsWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacings.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacings.xl),
            child: Text(
              "محبوب ترین برند ها",
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(height: AppSpacings.xl),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                CategoryModel.items.length,
                (index) {
                  final category = CategoryModel.items[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: AppSpacings.m),
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSpacings.l,
                        vertical: AppSpacings.m,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: selectedIndex == index
                              ? AppColors.mainRed
                              : AppColors.lightGrey100,
                        ),
                        borderRadius: BorderRadius.circular(AppSpacings.xxl),
                      ),
                      child: Text(
                        category.title,
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: selectedIndex == index
                                  ? AppColors.mainRed
                                  : AppColors.darkGrey200,
                            ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            color: AppColors.lightGrey100,
            margin: const EdgeInsets.symmetric(vertical: AppSpacings.xl),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
              itemCount:
                  CategoryModel.items[selectedIndex].popularBrands.length,
              itemBuilder: (BuildContext context, int index) {
                final pop =
                    CategoryModel.items[selectedIndex].popularBrands[index];
                return Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(AppSpacings.xl),
                  child: Image.network(
                    pop,
                    height: 50,
                    width: 50,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
