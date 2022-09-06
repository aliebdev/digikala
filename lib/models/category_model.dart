class SubCategory {
  final String title, count, image;

  SubCategory({
    required this.title,
    required this.count,
    required this.image,
  });
}

class CategoryModel {
  final String title, image;
  final List<SubCategory> subCategories;
  final List<String> popularBrands;

  CategoryModel({
    required this.title,
    required this.image,
    required this.subCategories,
    required this.popularBrands,
  });

  static final List<CategoryModel> items = [
    CategoryModel(
      title: "کالاهای دیجیتال",
      image: "assets/images/categories/kalaye_digital.png",
      subCategories: [
        SubCategory(
          title: "موبایل",
          count: "+۱۰۵۳۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/ec9a962187e1f82cc47e7a148ef99ec1c6fd024d_1656423242.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "تبلت و کتابخوان",
          count: "+۳۵۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/61f47d4064d911b6fb6d7cc60956369ecd552d47_1624953172.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "لپ تاپ",
          count: "+۶۵۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/114389900.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "دوربین",
          count: "+۸۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/edc721821043fcd0a8bde0c804d3c0906eca4908_1624519112.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "کامپیوتر و تجهیزات",
          count: "+۶۱۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/251456086a9ab9e8dd651b38fad939412168f742_1639848286.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "ماشین های اداری",
          count: "+۷۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/251456086a9ab9e8dd651b38fad939412168f742_1639848286.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
      ],
      popularBrands: [
        "https://dkstatics-public.digikala.com/digikala-brands/3960.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/2994.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/5518.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/0e1f6d05d3fb89f9e6a3db923bbddf5e37b1680f_1628494036.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/b46a720b21296adc1c9d21b931c8d978d0f5f771_1621675109.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public-2.digikala.com/digikala-brands/100008076.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/5619.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/1800.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
      ],
    ),
    CategoryModel(
        title: "خودرو، ابزار و تجهیزات صنعتی",
        image: "assets/images/categories/khodro_abzar_tajhizat_sanati.png",
        subCategories: [
          SubCategory(
            title: "تجهیزات صنعتی و انبارداری",
            count: "+۱۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/120814493.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "باغبانی و کشاورزی",
            count: "+۲۰۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/b1904f4abb2f5d3b6aab42f34f69dd8a0c16958f_1641591168.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "قطعات و تجهیزات خورشیدی",
            count: "+۲۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/110515437.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "وسایل نقلیه و لوازم یدکی",
            count: "+۷۲۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/c329b11d4d28b3fbc403fe9b75c224a1daeb8afe_1619872345.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "استخر، سونا و جکوزی",
            count: "+۲۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/994f260d761994b98a888dc7d520ea9422755914_1655793529.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/4560711ece300a10a7c2d002daa1500fce0b7fed_1634037132.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012416.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012489.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012149.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3314.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/2732.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100010211.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/7d33a0599fea5653d86abaf58e5d282fac0c6d6b_1641980504.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
    CategoryModel(
        title: "مد و پوشاک",
        image: "assets/images/categories/mode_poshak.png",
        subCategories: [
          SubCategory(
            title: "مردانه",
            count: "+۳۲۲۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/d96e096d3baa42da0ec82ec3614509a792e09b9b_1599655085.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "زنانه",
            count: "+۴۴۵۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/121343638.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "بچگانه",
            count: "+۱۲۰۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/661a08e0eb8b8c20da614c23198062bab6c8ead4_1634155520.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "زنانه و مردانه",
            count: "+۳۰۷۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/194563252dc4cfea6f2b75a344919513e8c80583_1599267738.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/02ffbe428c114595e445e53fa36d59860468bf88_1594023772.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/6121429b7133dafda8a035f21a4ad8c9352dddfc_1630338035.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/efff4d6c246ec731789110e3a6e21b35984f23ec_1620821665.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/5d9b5578308c549562788cc984a35793605449cc_1633354803.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/dc4a1e9c661b0c6cbe61b420bae689086096e6f3_1633523252.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/2407.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3327dfc0abbfb5b9065d75b9f51380434e377380_1658233238.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/23116f6c4328be403b65fac52c7f77c394bd134b_1620821902.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
    CategoryModel(
      title: "کالاهای سوپرمارکتی",
      image: "assets/images/categories/kalahaye_super_marketi.png",
      subCategories: [
        SubCategory(
          title: "کالاهای اساسی و خوار و بار",
          count: "+۲۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/98cca7eba7f5cd283010d47481cb727d70a8152a_1658207046.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "لبنیات",
          count: "+۶۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/112548575.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "مواد پروتئینی و تخم مرغ",
          count: "+۳۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/3609171.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "صبحانه",
          count: "+۱۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/3284291.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "نوشیدنی های سرد",
          count: "+۱۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/120982373.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "کنسرو و غذاهای آماده",
          count: "+۲۰۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/8aa59b8ecd6493d0ed81ef0c92826144eb3b90b9_1649840330.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
        SubCategory(
          title: "میوه و سبزیجات",
          count: "+۳۰۰ کالا",
          image:
              "https://dkstatics-public.digikala.com/digikala-products/3438063.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
        ),
      ],
      popularBrands: [
        "https://dkstatics-public.digikala.com/digikala-brands/311.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/f660c46ffc6d58a19e5c0af9d03c50be9a929571_1627214766.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/6061.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/5f9e5a98fc72f4eac2d4b4e6e4e6399ebd9aa65c_1646565463.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/be706472e5fbdd97135e1d1ef23bb1637c29aaa3_1604842731.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/100014253.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/100009593.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        "https://dkstatics-public.digikala.com/digikala-brands/8f4cfdd11abb02b69fe686b88bf43af5489589ee_1645874666.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
      ],
    ),
    CategoryModel(
        title: "اسباب بازی، کودک و نوزاد",
        image: "assets/images/categories/asbabbazi_kodak_nozad.png",
        subCategories: [
          SubCategory(
            title: "ایمنی و مراقبت",
            count: "+۱۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/119113710.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "تغذیه و رشد کودک",
            count: "+۲۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/17efdf96b0a1daf848bed952020641ba6a6e5af7_1612687598.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "پستانک و لوازم شیردهی",
            count: "+۲۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/115066329.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "بهداشت و حمام",
            count: "+۵۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/119197507.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "گردش و سفر",
            count: "+۲۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/119528424.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "سرگرمی و آموزشی",
            count: "+۵۳۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/22e6f54a9cb05cbc99935db25fddbf1ed4f89b9c_1626594513.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/f880ac63a446122e0d97bac1b4e967accdcd2654_1610541497.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012455.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100010006.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/5b375c212b457da664aff81eb33e02466656e4c4_1645966793.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public-2.digikala.com/digikala-brands/100008674.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/8f4cfdd11abb02b69fe686b88bf43af5489589ee_1645874666.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3185.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/b169f7d6337313ed8f0436201f262133a60a7b17_1626153244.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
    CategoryModel(
        title: "محصولات بومی و محلی",
        image: "assets/images/categories/mahsolat_bomi_mahali.png",
        subCategories: [
          SubCategory(
            title: "خانه و کاشانه بومی محلی",
            count: "+۸۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/e065705c44c801ddecb31792311d8c3904cf623a_1660998643.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "پوشیدنی های بومی محلی",
            count: "+۶۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/0633e243b7e3e61a810cb58b7099956447dd32a4_1652270657.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "بازی و سرگرمی های بومی محلی",
            count: "+۱۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/c67e990fe45f8113cadbe94d1052bb6671cb9b52_1640791063.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "خوراکی های بومی محلی",
            count: "+۹۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/ba22192853c9e7597662082db3d65e576e03defc_1647883116.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/ee543b385e4b8222daa4d32c502ff85ae6923209_1613379327.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/dbe4cf0cfd265bb278c6b743f1b6b5aa181c8249_1655884790.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/b6e8508c1ad07e2c67c12dda15c660c6bf590393_1655884964.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/afe623cd46332243fcb67a8ef4f268b9dce707c9_1623063476.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/6124.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012332.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/b0b6dcea0e68b66c8d2bee2860ded1c113e15e65_1642586133.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/d557960d1af4986e499fc37f96074baddb8793de_1655803934.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
    CategoryModel(
        title: "زیبایی و سلامت",
        image: "assets/images/categories/zibayi_salamat.png",
        subCategories: [
          SubCategory(
            title: "لوازم آرایشی",
            count: "+۶۱۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/576765.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "لوازم بهداشتی",
            count: "+۳۰۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/559707.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "لوازم شخصی برقی",
            count: "+۴۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/30ceec1255940489ae3392fa867f9c0fadc05a77_1603019646.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "عطر و ادکلن",
            count: "+۱۴۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/346149.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "ابزار سلامت",
            count: "+۱۳۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/113101643.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/3972.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/627f3a8485f2884e7ae2951adf0761fc3792495e_1627386509.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/bff03daf9cf71a71b7e41b31255ba9e747d1a01f_1644133724.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/1313.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/830.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3978.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/70ad4ff2c191311ed42dcf3625596c2f57ccb4ba_1620821804.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012469.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
    CategoryModel(
        title: "خانه و آشپزخانه",
        image: "assets/images/categories/khane_ashpazkhane.png",
        subCategories: [
          SubCategory(
            title: "شتشو و نظافت",
            count: "+۱۱۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/2935188.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "حمام و سرویس بهداشتی",
            count: "+۳۰۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/7bb3b07a790e53520222b8cf65b42c7e364c024f_1614329719.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "صوتی و تصویری",
            count: "+۳۰۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/a61059cfbe546c98d6385ecc31c70c936bb0b2ed_1635006072.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "آشپزخانه",
            count: "+۷۱۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/4cf2c6933f27856dc5df3cc49f295c45536fba96_1644049292.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "سرو و پذیرایی",
            count: "+۷۱۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/90d1fd978dec5b532ea8491f652adddb0b1664ad_1636807291.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "حیوانات خانگی",
            count: "+۱۷۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/d6935bdf7218ea8717c44667846180066f9509d3_1626457504.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "لوازم برقی",
            count: "+۱۵۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/911e57b5a4cd1a86bfb8935cc44e87e17faae65e_1630310917.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/2385.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/119.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/259005b8ba1ad2f7c8926b6be841dd4674628ef6_1619932122.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100013073.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100010155.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3243.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/d62ba940148eae1b6b785e3a95956c05aa2b80d8_1655638068.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/5834.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
    CategoryModel(
        title: "کتاب، لوازم تحریر و هنر",
        image: "assets/images/categories/ketab_lavazem_tahrir_honar.png",
        subCategories: [
          SubCategory(
            title: "کتاب",
            count: "+۱۰۷۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/97effe5b38609eccafa6717133489587bcae0047_1648116296.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "مجلات، نقشه و نشانگر کتاب",
            count: "+۵۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/53afa546fdf375a24a8fc48a90492a59c7932ba5_1624983108.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "لوازم تحریر ",
            count: "+۱۰۱۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/121351485.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "صنایع دستی",
            count: "+۵۸۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/885667ca46869ae4fba096fb98a2c6a2caeadffb_1645432329.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "فرش و گلیم",
            count: "+۲۵۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/869167c64663111b9b53275b5889bfd30ea4dee8_1612455186.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "آلات موسیقی",
            count: "+۴۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/1012970.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "موسیقی",
            count: "+۱۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/7f852a64ed9e3047fed9c26f248e21ba605c7985_1652086571.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "فیلم",
            count: "+۱۰۰۰  کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/3a8d62603b3db284c98429b8b928af7a28ba3047_1651393666.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/100012429.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012460.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public-2.digikala.com/digikala-brands/100009092.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3280.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3803.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012414.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3453.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/3201.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
    CategoryModel(
        title: "ورزش و سفر",
        image: "assets/images/categories/varzesh_safar.png",
        subCategories: [
          SubCategory(
            title: "پوشاک ورزشی",
            count: "+۱۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/0baf53cb9c43c2a3df743482d076099500d1e8aa_1636362711.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "لوازم ورزشی",
            count: "+۱۹۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/86f3f77cf4eff0f9ae2f9b3124abd45f3b7dddb0_1632154062.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
          SubCategory(
            title: "لوازم سفر و کمپینگ",
            count: "+۲۹۰۰۰ کالا",
            image:
                "https://dkstatics-public.digikala.com/digikala-products/111602617.jpg?x-oss-process=image/resize,m_lfit,h_350,w_350/quality,q_60",
          ),
        ],
        popularBrands: [
          "https://dkstatics-public.digikala.com/digikala-brands/100010607.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/7323.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/1058.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/7a5e3e066643bc0178c15f4f772007da820eca47_1603783758.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/0258cb71cc8afa6e85037ea2376f7ef7f104abcd_1602572887.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/100012479.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public.digikala.com/digikala-brands/2577.png?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
          "https://dkstatics-public-2.digikala.com/digikala-brands/100008422.jpg?x-oss-process=image/resize,m_lfit,h_160,w_160/quality,q_80",
        ]),
  ];
}
