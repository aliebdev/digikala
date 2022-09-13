import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../models/product_model.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_spacings.dart';
import '../../widgets/app_spacer.dart';
import '../../widgets/price_text.dart';
import 'widgets/cart_counter.dart';
import 'widgets/cart_tab.dart';

part "widgets/cart_offers_widget.dart";

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen>
    with SingleTickerProviderStateMixin {
  final List<String> tabLabels = ["سبد خرید", "لیست خرید بعدی"];
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabLabels.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar(
          controller: tabController,
          labelColor: AppColors.mainRed,
          unselectedLabelColor: AppColors.darkGrey100,
          labelStyle: Theme.of(context).textTheme.bodyMedium,
          indicatorColor: AppColors.mainRed,
          indicatorWeight: 3.0,
          onTap: (value) {
            setState(() {
              tabController.index = value;
            });
          },
          tabs: List.generate(
            tabLabels.length,
            (index) => CartTab(
              title: tabLabels[index],
              isSelected: tabController.index == index,
              count: index == 0
                  ? ProductModel.cartItems.length.toString()
                  : ProductModel.items.length.toString(),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          _CartTab(),
          _CartNextBuyTab(),
        ],
      ),
    );
  }
}

class _CartNextBuyTab extends StatelessWidget {
  const _CartNextBuyTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const _CartOtherProductWidget(),
          ...ProductModel.items.map(
            (item) => _CartTabTile(
              item: item,
              isCart: false,
            ),
          ),
        ],
      ),
    );
  }
}

class _CartTab extends StatelessWidget {
  const _CartTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const _CartOtherProductWidget(),
                  ...ProductModel.cartItems.map(
                    (item) => _CartTabTile(item: item),
                  ),
                  const _CartFreeDeliveryWidget(),
                  const _CartSummaryWidget(),
                  const AppSpacer(height: AppSpacings.xl),
                  const _CartOffersWidget(),
                  const _CartDescriptionWidget(),
                ],
              ),
            ),
          ),
          const _CartNextWidget(),
        ],
      ),
    );
  }
}

class _CartNextWidget extends StatelessWidget {
  const _CartNextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.l),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey100,
            blurRadius: AppSpacings.m,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: AppColors.mainRed,
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacings.xl,
                vertical: AppSpacings.m,
              ),
            ),
            child: Text(
              "ادامه فرآیند خرید",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "جمع سبد خرید",
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: AppColors.darkGrey100,
                    ),
              ),
              PriceText(price: ProductModel.cartItems.first.price),
            ],
          ),
        ],
      ),
    );
  }
}

class _CartDescriptionWidget extends StatelessWidget {
  const _CartDescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGrey100,
      padding: const EdgeInsets.symmetric(
        vertical: AppSpacings.xxl,
        horizontal: AppSpacings.l,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.info_outline,
            size: 35,
            color: AppColors.darkGrey100,
          ),
          const SizedBox(width: AppSpacings.xl),
          Expanded(
            child: Text(
              "کالاهای موجود در سبد شما ثبت و رزرو نشده اند، برای ثبت سفارش مراحل بعدی را تکمیل کنید.",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.darkGrey100,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CartSummaryWidget extends StatelessWidget {
  const _CartSummaryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.l),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "خلاصه سبد",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "${ProductModel.cartItems.length} کالا",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.lightGrey200,
                    ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacings.xxl),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "قیمت کالاها",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.darkGrey100,
                    ),
              ),
              PriceText(price: ProductModel.cartItems.first.previousPrice),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacings.l),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "تخفیف کالاها",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.darkGrey100,
                      ),
                ),
                PriceText(
                  price: "(۲٪)${ProductModel.cartItems.first.discount}",
                  color: AppColors.mainRed,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "جمع سبد خرید",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.darkGrey100,
                    ),
              ),
              PriceText(price: ProductModel.cartItems.first.price),
            ],
          ),
          const SizedBox(height: AppSpacings.xxl),
          Row(
            children: [
              const CircleAvatar(
                radius: 2,
                backgroundColor: AppColors.darkGrey200,
              ),
              const SizedBox(width: AppSpacings.m),
              Expanded(
                child: Text(
                  "هزینه ارسال براساس آدرس، زمان تحویل، وزن و حجم مرسوله شما محاسبه می شود",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.darkGrey100,
                      ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacings.l),
          const Divider(
            color: AppColors.lightGrey200,
          ),
          const SizedBox(height: AppSpacings.xl),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.monetization_on,
                    color: Colors.amber,
                    size: 20,
                  ),
                  const SizedBox(width: AppSpacings.s),
                  Text(
                    "امتیاز دیجی کلاب",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.darkGrey100,
                        ),
                  ),
                ],
              ),
              const Text.rich(
                TextSpan(
                  text: "۱۵۰ ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  children: [
                    TextSpan(
                      text: "امتیاز",
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacings.l),
          Text(
            "بعد از پایان مهلت مرجوعی، برای دریافت امتیاز به صفحه ماموریت های کلابی سر بزنید",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.darkGrey100,
                ),
          ),
        ],
      ),
    );
  }
}

class _CartFreeDeliveryWidget extends StatelessWidget {
  const _CartFreeDeliveryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGrey100,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
              0,
              AppSpacings.l,
              AppSpacings.xl,
              AppSpacings.l,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: AppSpacings.xl,
              vertical: AppSpacings.l,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(AppSpacings.xl),
              border: Border.all(
                color: AppColors.lightGrey200,
                width: .5,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ارسال رایگان",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      "برای سفارش بالای ۵۰۰ هزار تومان",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.darkGrey100,
                          ),
                    ),
                  ],
                ),
                Image.network(
                  "https://images.vectorhq.com/images/istock/previews/9980/99808743-fast-delivery-concept-with-truck-icon.jpg",
                  width: 70,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CartOtherProductWidget extends StatelessWidget {
  const _CartOtherProductWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: AppSpacings.l),
      title: Text(
        "دیگر کالاها",
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        "${ProductModel.cartItems.length} کالا",
        style: Theme.of(context).textTheme.labelMedium!.copyWith(
              color: AppColors.lightGrey200,
            ),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.more_vert,
          color: AppColors.lightGrey200,
        ),
      ),
    );
  }
}

class _CartTabTile extends StatelessWidget {
  const _CartTabTile({
    Key? key,
    required this.item,
    this.isCart = true,
  }) : super(key: key);

  final ProductModel item;
  final bool isCart;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(AppSpacings.l),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.lightGrey100,
          ),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                item.image,
                height: size.width / 3,
                width: size.width / 3,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: AppSpacings.l),
                      child: Row(
                        children: [
                          Container(
                            height: AppSpacings.l,
                            width: AppSpacings.l,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.lightGrey100,
                              ),
                            ),
                          ),
                          const SizedBox(width: AppSpacings.l),
                          Text(
                            "طلایی",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: AppColors.darkGrey100,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: AppSpacings.l),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check,
                            color: AppColors.darkGrey200,
                            size: 18,
                          ),
                          const SizedBox(width: AppSpacings.l),
                          Text(
                            "گارانتی ۱۸ ماهه داریا همراه پایتخت",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: AppColors.darkGrey100,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: AppSpacings.l),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.home_outlined,
                            color: AppColors.darkGrey200,
                            size: 18,
                          ),
                          const SizedBox(width: AppSpacings.l),
                          Text(
                            "دیجیکالا",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(
                                  color: AppColors.darkGrey100,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: AppSpacings.l),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Icon(
                                Icons.store,
                                color: AppColors.blue,
                                size: 18,
                              ),
                              Container(
                                height: AppSpacings.xl,
                                width: 3,
                                color: AppColors.lightGrey100,
                              ),
                              const CircleAvatar(
                                radius: AppSpacings.s,
                                backgroundColor: AppColors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(width: AppSpacings.l),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "موجود در انبار دیجیکالا",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                      color: AppColors.darkGrey100,
                                    ),
                              ),
                              const SizedBox(height: AppSpacings.l),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.fire_truck,
                                    color: AppColors.mainRed,
                                    size: 15,
                                  ),
                                  const SizedBox(width: AppSpacings.m),
                                  Text(
                                    "ارسال دیجی کالا",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                          color: AppColors.darkGrey100,
                                          fontSize: 10,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: AppSpacings.xl),
          Row(
            children: [
              if (isCart)
                CartCounter(item: item)
              else
                Container(
                  width: 120,
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpacings.m,
                    horizontal: AppSpacings.m,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.lightGrey100),
                    borderRadius: BorderRadius.circular(AppSpacings.l),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.cartFlatbedSuitcase,
                    color: AppColors.mainRed,
                    size: 20,
                  ),
                ),
              const SizedBox(width: AppSpacings.xl),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${item.discount} تومان تخفیف",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: AppColors.mainRed,
                        ),
                  ),
                  PriceText(price: item.price),
                ],
              ),
            ],
          ),
          const SizedBox(height: AppSpacings.l),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppSpacings.xl),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  isCart ? "ذخیره در لیست خرید بعدی" : "حذف از لیست",
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        color: isCart ? AppColors.blue : AppColors.mainRed,
                      ),
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: isCart ? AppColors.blue : AppColors.mainRed,
                  size: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
