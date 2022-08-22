import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/slider_model.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_spacings.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 220,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: AppSpacings.xxl),
          child: CarouselSlider.builder(
            itemCount: SliderModel.items.length,
            itemBuilder: (context, index, realIndex) => Container(
              margin: const EdgeInsets.only(right: AppSpacings.m),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSpacings.l),
                image: DecorationImage(
                  image: AssetImage(SliderModel.items[index].image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            options: CarouselOptions(
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
        Positioned(
          left: 40,
          bottom: 40,
          child: AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: SliderModel.items.length,
            effect: const ScrollingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              maxVisibleDots: 5,
              activeDotColor: AppColors.black,
              dotColor: Colors.black38,
            ),
          ),
        ),
      ],
    );
  }
}
