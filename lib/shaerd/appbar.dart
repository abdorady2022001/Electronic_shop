import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_application_1/pages/checkout.dart';
import 'package:shop_application_1/provider/cart.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                  child: Text(
                    "${Carttt.selectedProducts.length}",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle)),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckOut(),
                  ),
                );
              },
              icon: Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text(
            "\$ ${Carttt.price}",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
