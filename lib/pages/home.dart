import 'package:flutter/material.dart';

class Item {
  String imgpath;
  double price;
  Item({required this.imgpath, required this.price});
}

class Home extends StatelessWidget {
  final List<Item> items = [
    Item(imgpath: "assets/img/s1.jpg", price: 10.99),
    Item(imgpath: "assets/img/s6.jpg", price: 10.99),
    Item(imgpath: "assets/img/s2.jpg", price: 10.99),
    Item(imgpath: "assets/img/s7.jpg", price: 10.99),
    Item(imgpath: "assets/img/s3.jpg", price: 10.99),
    Item(imgpath: "assets/img/s8.jpg", price: 10.99),
    Item(imgpath: "assets/img/s4.jpg", price: 10.99),
    Item(imgpath: "assets/img/s9.jpg", price: 10.99),
    Item(imgpath: "assets/img/s5.jpg", price: 10.99),
    Item(imgpath: "assets/img/s10.jpg", price: 10.99),
  ];

  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 3,
                mainAxisSpacing: 33),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: GridTile(
                  child: Stack(children: [
                    Positioned(
                      top: 1,
                      bottom: -3,
                      right: 0,
                      left: 0,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.asset(items[index].imgpath)),
                    ),
                  ]),
                  footer: GridTileBar(
                    backgroundColor: Color.fromARGB(66, 73, 127, 110),
                    trailing: IconButton(
                        color: Color.fromARGB(255, 0, 0, 0),
                        onPressed: () {},
                        icon: Icon(Icons.add)),
                    leading: Text("\$12.99"),
                    title: Text(
                      "       الاسم   ",
                    ),
                  ),
                ),
              );
            }),
      ),
      drawer: Drawer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/a2.jpg"),
                      fit: BoxFit.cover),
                ),
                accountName: Text("Abdelrhman",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    )),
                accountEmail: Text("abdo@yahoo.com"),
                currentAccountPictureSize: Size.square(85),
                currentAccountPicture: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage("assets/img/a1.jpg")),
              ),
              ListTile(
                  title: Text("Home"), leading: Icon(Icons.home), onTap: () {}),
              ListTile(
                  title: Text("My products"),
                  leading: Icon(Icons.add_shopping_cart),
                  onTap: () {}),
              ListTile(
                  title: Text("About"),
                  leading: Icon(Icons.help_center),
                  onTap: () {}),
              ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.exit_to_app),
                  onTap: () {}),
            ],
          ),
          Container(
            margin: EdgeInsets.only(bottom: 12),
            child: Text("Developed by Abdelrhman © 2023",
                style: TextStyle(fontSize: 16)),
          )
        ],
      )),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 76, 141, 95),
        title: Text("Home"),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                      child: Text(
                        "8",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle)),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text("\$ 128"),
              )
            ],
          )
        ],
      ),
    );
  }
}
