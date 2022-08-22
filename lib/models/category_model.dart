class CategoryModel {
  final String title, image;

  CategoryModel({required this.title, required this.image});

  static final List<CategoryModel> items = [
    CategoryModel(
      title: "کالاهای دیجیتال",
      image: "assets/images/categories/kalaye_digital.png",
    ),
    CategoryModel(
      title: "خودرو، ابزار و تجهیزات صنعتی",
      image: "assets/images/categories/khodro_abzar_tajhizat_sanati.png",
    ),
    CategoryModel(
      title: "مد و پوشاک",
      image: "assets/images/categories/mode_poshak.png",
    ),
    CategoryModel(
      title: "کالاهای سوپرمارکتی",
      image: "assets/images/categories/kalahaye_super_marketi.png",
    ),
    CategoryModel(
      title: "اسباب بازی، کودک و نوزاد",
      image: "assets/images/categories/asbabbazi_kodak_nozad.png",
    ),
    CategoryModel(
      title: "محصولات بومی و محلی",
      image: "assets/images/categories/mahsolat_bomi_mahali.png",
    ),
    CategoryModel(
      title: "زیبایی و سلامت",
      image: "assets/images/categories/zibayi_salamat.png",
    ),
    CategoryModel(
      title: "خانه و آشپزخانه",
      image: "assets/images/categories/khane_ashpazkhane.png",
    ),
    CategoryModel(
      title: "کتاب، لوازم تحریر و هنر",
      image: "assets/images/categories/ketab_lavazem_tahrir_honar.png",
    ),
    CategoryModel(
      title: "ورزش و سفر",
      image: "assets/images/categories/varzesh_safar.png",
    ),
  ];
}
