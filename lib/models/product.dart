class Product {
  late final int id , price;
  late final String title , subTitle, description , image ;
  Product({
   required this.id,
   required this.price,
    required this.title,
    required this.description,
    required this.image,
    required this.subTitle,
});
}
List <Product> products =[
  Product(
      id: 1,
      price: 59,
      title: 'سماعات لاسلكية',
      description:"جودة صوت عالية",
      image: "assets/images/1.jpg",
      subTitle: "سماعات لاسلكية مقاومة للمياه مع بطارية تدوم طوال اليوم وامكانية الاتصال مع جهاز ايفون"),
  Product(
      id: 2,
      price:1100,
      title: 'iphpne13',
      description:"اصبح للموبايل قوة",
      image: "assets/images/i.jpg",
      subTitle: "يدعم شبكات الاتصال الجيل الثاني الـ 2G والجيل الثالث الـ 3G والجيل الرابع الـ 4G والجيل الخامس الـ 5G "),

  Product(
      id: 4,
      price: 80,
      title: 'سبيكر صوت',
      description:"جودة صوت عالية",
      image: "assets/images/6.jpg",
      subTitle: "صوت عالي جدا تعمل على جميع الاجهزة "),
  Product(
      id: 5,
      price: 90,
      title: 'سماعات سلكية',
      description:"جودة صوت عالية",
      image: "assets/images/4.jpg",
      subTitle: "صون عالي ونقي جدا مع بيس عالي الجودة"),
  Product(
      id: 6,
      price: 200,
      title: 'كاميرة',
      description:"جودة عالية",
      image: "assets/images/2.jpg",
      subTitle: "كميرا عالية الجودة مع عدسات مقاومة لاشعة الشمس والمياه صور fullhd"),

];