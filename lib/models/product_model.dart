class ProductModel {
  final String title, image, price, previousPrice, discount;
  final bool isAvailable;
  int count;

  ProductModel({
    required this.title,
    required this.image,
    required this.price,
    required this.previousPrice,
    required this.discount,
    required this.isAvailable,
    this.count = 1,
  });

  static final List<ProductModel> cartItems = [
    ProductModel(
      title:
          "کوشی موبایل اپل مدل iPhone 13 Pro Max A2644 دوسیم کارت ظرفیت 256 گیگابایت و رم 6 گیگابایت",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/78148768072784b73431693d936ae1d5eb439606_1653804655.jpg?x-oss-process=image/resize,m_lfit,h_800,w_800/quality,q_90",
      price: "۵۲,۹۸۹,۰۰۰",
      previousPrice: "۵۱,۰۷۸,۰۰۰",
      discount: "۱,۹۱۱,۰۰۰",
      isAvailable: true,
    ),
  ];

  static final List<ProductModel> items = [
    ProductModel(
      title: "چراغ مطالعه سیلورلایت مدل 1207",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/881719.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۱,۰۱۲,۵۰۰",
      previousPrice: "۱,۳۵۰,۰۰۰",
      discount: "۲۵٪",
      isAvailable: true,
    ),
    ProductModel(
      title: "کاغذ کلاسوری تیما مدل LOVE بسته 100 عددی",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/92631a6de4258bbd13fed17f833e471372dc2be3_1658583452.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۲۲,۰۰۰",
      previousPrice: "۲۹,۵۰۰",
      discount: "۲۵٪",
      isAvailable: false,
    ),
    ProductModel(
      title: "ماشین اصلاح موی سر و صورت دی اس پی مدل 90479",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/70ea621810f18f70ca28105d5bf9f4b3974616a6_1657389517.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۸۹۹,۹۰۰",
      previousPrice: "۲,۵۰۰,۰۰۰",
      discount: "۶۴٪",
      isAvailable: true,
    ),
    ProductModel(
      title: "مادربرد ایسوس مدل PRIME H410M-R-SI",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/618e4e24a98877d287ace91aac19d0fd39b93381_1608026874.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۱,۸۹۰,۰۰۰",
      previousPrice: "۲,۰۷۰,۰۰۰",
      discount: "۹٪",
      isAvailable: false,
    ),
    ProductModel(
      title: "کابل تبدیل USB به USB-C تسکو مدل TC C169 طول 1 متر",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/1552bcedecdc207ec93952b6bea26000ff2487e0_1596202840.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۳۹,۹۰۰",
      previousPrice: "۵۸,۰۰۰",
      discount: "۳۱٪",
      isAvailable: false,
    ),
    ProductModel(
      title: "چراغ مطالعه سیلورلایت مدل 1207",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/881719.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۱,۰۱۲,۵۰۰",
      previousPrice: "۱,۳۵۰,۰۰۰",
      discount: "۲۵٪",
      isAvailable: true,
    ),
    ProductModel(
      title: "کاغذ کلاسوری تیما مدل LOVE بسته 100 عددی",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/92631a6de4258bbd13fed17f833e471372dc2be3_1658583452.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۲۲,۰۰۰",
      previousPrice: "۲۹,۵۰۰",
      discount: "۲۵٪",
      isAvailable: false,
    ),
    ProductModel(
      title: "ماشین اصلاح موی سر و صورت دی اس پی مدل 90479",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/70ea621810f18f70ca28105d5bf9f4b3974616a6_1657389517.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۸۹۹,۹۰۰",
      previousPrice: "۲,۵۰۰,۰۰۰",
      discount: "۶۴٪",
      isAvailable: true,
    ),
    ProductModel(
      title: "مادربرد ایسوس مدل PRIME H410M-R-SI",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/618e4e24a98877d287ace91aac19d0fd39b93381_1608026874.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۱,۸۹۰,۰۰۰",
      previousPrice: "۲,۰۷۰,۰۰۰",
      discount: "۹٪",
      isAvailable: false,
    ),
    ProductModel(
      title: "کابل تبدیل USB به USB-C تسکو مدل TC C169 طول 1 متر",
      image:
          "https://dkstatics-public.digikala.com/digikala-products/1552bcedecdc207ec93952b6bea26000ff2487e0_1596202840.jpg?x-oss-process=image/resize,m_lfit,h_300,w_300/quality,q_80",
      price: "۳۹,۹۰۰",
      previousPrice: "۵۸,۰۰۰",
      discount: "۳۱٪",
      isAvailable: false,
    ),
  ];
}
