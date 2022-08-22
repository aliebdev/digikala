import 'package:digikala/widgets/app_loading.dart';
import 'package:flutter/material.dart';

import '../../models/mobile_model.dart';
import '../../widgets/app_spacer.dart';
import 'widgets/ads_widget.dart';
import 'widgets/banner_widget.dart';
import 'widgets/based_on_your_views_widget.dart';
import 'widgets/category_widget.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/digi_apps_widget.dart';
import 'widgets/offers_widget.dart';
import 'widgets/products_widget.dart';
import 'widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () {
        setState(() {
          _isLoading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: _isLoading
          ? const AppLoading()
          : SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SliderWidget(),
                  const DigiAppsWidget(),
                  const OffersWidget(),
                  const AdsWidget(),
                  const CategoryWidget(),
                  const BannerWidget(image: "assets/images/single_banner.jpeg"),
                  BasedOnYourViewsWidget(
                    title: "گوشی موبایل",
                    items: MobileModel.items,
                  ),
                  const BannerWidget(
                      image: "assets/images/single_banner_2.jpeg"),
                  BasedOnYourViewsWidget(
                    title: "کیف و کاور گوشی",
                    items: MobileModel.covers,
                  ),
                  const AppSpacer(),
                  const ProductsWidget(),
                ],
              ),
            ),
    );
  }
}
