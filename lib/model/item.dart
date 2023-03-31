class Item {
  String imgpath;
  double price;
  String location;
  Item(
      {required this.imgpath,
      required this.price,
      this.location = "Main branch"});
}

final List<Item> items = [
  Item(price: 10.99, imgpath: "assets/img/s1.jpg", location: "abdo shop"),
  Item(price: 20.99, imgpath: "assets/img/s6.jpg", location: "ahmed shop"),
  Item(price: 50.99, imgpath: "assets/img/s2.jpg", location: "abdoo shop"),
  Item(price: 24.99, imgpath: "assets/img/s7.jpg", location: "abdo2 shop"),
  Item(price: 100.99, imgpath: "assets/img/s3.jpg", location: "abd0o shop"),
  Item(price: 150.99, imgpath: "assets/img/s8.jpg", location: "3bdo shop"),
  Item(price: 14.99, imgpath: "assets/img/s4.jpg", location: "abdo shop"),
  Item(price: 19.99, imgpath: "assets/img/s9.jpg", location: "abdo shop"),
  Item(price: 129.99, imgpath: "assets/img/s5.jpg", location: "abdo shop"),
  Item(price: 14.99, imgpath: "assets/img/s10.jpg", location: "abdo shop"),
];
