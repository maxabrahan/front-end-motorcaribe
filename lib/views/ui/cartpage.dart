import 'package:ecomerce_frontend/views/shared/appstyle.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "This is CartPage",
          style: appstyle(40, Colors.black, FontWeight.bold),
        ),
      ),
    );
  }
}
