part of '../cart_screen.dart';

class _CartOffersWidget extends StatelessWidget {
  const _CartOffersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacings.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("خرید این محصولات، محصولات زیر را هم خریده اند"),
          const SizedBox(height: AppSpacings.l),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ProductModel.items
                  .map(
                    (item) => Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      padding: const EdgeInsets.all(AppSpacings.l),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: AppColors.lightGrey100,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.network(
                            item.image,
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(height: AppSpacings.l),
                          Text(
                            item.title,
                            style: Theme.of(context).textTheme.labelMedium,
                            maxLines: 2,
                          ),
                          const SizedBox(height: AppSpacings.m),
                          if (item.isAvailable)
                            Row(
                              children: [
                                const Icon(
                                  Icons.check,
                                  size: 15,
                                  color: AppColors.blue,
                                ),
                                Text(
                                  "موجود در انبار دیجی کالا",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 10,
                                        color: AppColors.darkGrey100,
                                      ),
                                ),
                              ],
                            )
                          else
                            Text(
                              "تنها ۳ عدد در انبار باقیست",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
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
                                  borderRadius:
                                      BorderRadius.circular(AppSpacings.xxl),
                                ),
                                child: Text(
                                  item.discount,
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
                                    item.price,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    item.previousPrice,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 11,
                                          color: AppColors.lightGrey200,
                                          decoration:
                                              TextDecoration.lineThrough,
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
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
