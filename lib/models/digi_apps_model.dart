class DigiAppsModel {
  final String title, image;

  DigiAppsModel({required this.title, required this.image});

  static final List<DigiAppsModel> items = [
    DigiAppsModel(
      title: "دیجی کالا جت",
      image: "assets/images/apps/digikala_jet.png",
    ),
    DigiAppsModel(
      title: "حراج دیجی استایل",
      image: "assets/images/apps/haraj_digi_style.png",
    ),
    DigiAppsModel(
      title: "دیجی پی",
      image: "assets/images/apps/digi_pay.png",
    ),
    DigiAppsModel(
      title: "دیجی کالا مهر",
      image: "assets/images/apps/digikala_mehr.png",
    ),
    DigiAppsModel(
      title: "دیجی پلاس",
      image: "assets/images/apps/digi_plus.png",
    ),
    DigiAppsModel(
      title: "ماموریت ها",
      image: "assets/images/apps/mamoriyat_ha.png",
    ),
    DigiAppsModel(
      title: "دیجی کلاب",
      image: "assets/images/apps/digi_club.png",
    ),
  ];
}
