class Item {
  String imgpath;
  double price;
  String location;
  String name;
  Item(
      {required this.imgpath,
      required this.name,
      required this.price,
      this.location = "Main branch"});
}

final List<Item> items = [
  Item(
      name: "product1",
      price: 10.99,
      imgpath: "assets/img/s1.jpg",
      location: "abdo shop"),
  Item(
      name: "product2",
      price: 20.99,
      imgpath: "assets/img/s6.jpg",
      location: "ahmed shop"),
  Item(
      name: "product3",
      price: 50.99,
      imgpath: "assets/img/s2.jpg",
      location: "abdoo shop"),
  Item(
      name: "product4",
      price: 24.99,
      imgpath: "assets/img/s7.jpg",
      location: "abdo2 shop"),
  Item(
      name: "product5",
      price: 100.99,
      imgpath: "assets/img/s3.jpg",
      location: "abd0o shop"),
  Item(
      name: "product6",
      price: 150.99,
      imgpath: "assets/img/s8.jpg",
      location: "3bdo shop"),
  Item(
      name: "product7",
      price: 14.99,
      imgpath: "assets/img/s4.jpg",
      location: "abdo shop"),
  Item(
      name: "product8",
      price: 19.99,
      imgpath: "assets/img/s9.jpg",
      location: "abdo shop"),
  Item(
      name: "product9",
      price: 129.99,
      imgpath: "assets/img/s5.jpg",
      location: "abdo shop"),
  Item(
      name: "product10",
      price: 14.99,
      imgpath: "assets/img/s10.jpg",
      location: "abdo shop"),
];
