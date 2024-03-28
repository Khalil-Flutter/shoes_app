import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/models/shoe_model.dart';
import 'package:shoes_app/screens/pages/cart/components/cart_item.dart';

import '../../../models/cart_model.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20), // Add this line
              Text(
                "My Cart",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: provider.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe individualShoe = provider.userCart[index];
                    return CartItem(shoe: individualShoe);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
