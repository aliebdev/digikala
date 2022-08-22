import 'package:flutter/material.dart';

import '../../../models/category_model.dart';
import '../../../theme/app_spacings.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: AppSpacings.l),
        Text(
          "خرید براساس دسته بندی",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: AppSpacings.l),
        Column(
          children: List.generate(
            4,
            (colIndex) {
              final itemCount = colIndex == 0 || colIndex == 3 ? 2 : 3;
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  itemCount,
                  (rowIndex) {
                    switch (colIndex) {
                      case 1:
                        rowIndex += 2;
                        break;
                      case 2:
                        rowIndex += 5;
                        break;
                      case 3:
                        rowIndex += 8;
                        break;
                      default:
                    }
                    final category = CategoryModel.items[rowIndex];
                    return CategoryWidgetTile(category: category);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class CategoryWidgetTile extends StatelessWidget {
  const CategoryWidgetTile({Key? key, required this.category})
      : super(key: key);

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 3.5,
      height: size.width / 3.2,
      child: Column(
        children: [
          Image.asset(
            category.image,
            height: 80,
            width: 80,
          ),
          Text(
            category.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
