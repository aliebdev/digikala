import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../models/product_model.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({
    Key? key,
    required this.item,
  }) : super(key: key);

  final ProductModel item;

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacings.s,
            horizontal: AppSpacings.m,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.lightGrey100),
            borderRadius: BorderRadius.circular(AppSpacings.l),
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.item.count++;
                  });
                },
                child: const Icon(
                  Icons.add,
                  color: AppColors.mainRed,
                  size: 30,
                ),
              ),
              SizedBox(
                width: 50,
                child: Text(
                  widget.item.count.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.mainRed,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              SizedBox(
                width: 30,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 150),
                  child: widget.item.count > 1
                      ? GestureDetector(
                          onTap: () {
                            setState(() {
                              if (widget.item.count >= 1) {
                                widget.item.count--;
                              }
                            });
                          },
                          child: const Icon(
                            Icons.remove,
                            color: AppColors.mainRed,
                            size: 30,
                          ),
                        )
                      : const Icon(
                          FontAwesomeIcons.solidTrashCan,
                          color: AppColors.mainRed,
                          size: 22,
                        ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
