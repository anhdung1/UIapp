class Shoes {
  String typeShoes;
  String pricesale;
  int id;
  bool favourite;
  String name;
  String price;
  String image;
  String imageSmall;
  String introduce;
  Shoes(
      {required this.id,
      required this.pricesale,
      required this.favourite,
      required this.name,
      required this.price,
      required this.image,
      required this.typeShoes,
      required this.imageSmall,
      required this.introduce});
}

List<Shoes> aaa = [
  Shoes(
      id: 1,
      pricesale: "\$160.00",
      favourite: true,
      name: "Nike Air Max 270 Essential",
      price: "\$179.39",
      image: "asset/image/orangeShoes.png",
      typeShoes: "Men's Shoes",
      imageSmall: "asset/image/orangeShoes_small.png",
      introduce:
          "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........"),
  Shoes(
      id: 2,
      pricesale: "\$160.00",
      favourite: true,
      name: "Nike Air Max 270 Essential",
      price: "\$179.39",
      image: "asset/image/orangeShoes.png",
      typeShoes: "Men's Shoes",
      imageSmall: "asset/image/orangeShoes_small.png",
      introduce:
          "The Nike Air Max 270 Essential unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........"),
  Shoes(
      id: 3,
      pricesale: "\$160.00",
      favourite: true,
      name: "Nike Jordan",
      price: "\$58.7",
      image: "asset/image/redwhiteShoesBig.png",
      typeShoes: "Men's Shoes",
      imageSmall: "asset/image/redwhiteShoes.png",
      introduce:
          "The Nike Jordan unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........"),
  Shoes(
      id: 4,
      pricesale: "\$160.00",
      favourite: true,
      name: "Nike Club Max",
      price: "\$47.7",
      image: "asset/image/blueShoes1Big.png",
      typeShoes: "Men's Shoes",
      imageSmall: "asset/image/blueShoes.png",
      introduce:
          "The Nike Club Max unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........"),
  Shoes(
      id: 5,
      pricesale: "\$160.00",
      favourite: true,
      name: "Nike Air Max",
      price: "\$37.8",
      image: "asset/image/blueShoesBig.png",
      typeShoes: "Men's Shoes",
      imageSmall: "asset/image/blueShoes1.png",
      introduce:
          "The Nike Club Max unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........"),
  Shoes(
      id: 6,
      pricesale: "\$160.00",
      favourite: true,
      name: "Nike Air Max",
      price: "\$57.8",
      image: "asset/image/blackShoesBig.png",
      typeShoes: "Men's Shoes",
      imageSmall: "asset/image/blackShoes.png",
      introduce:
          "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........"),
];
