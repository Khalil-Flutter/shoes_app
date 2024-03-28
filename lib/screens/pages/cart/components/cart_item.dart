import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_app/models/cart_model.dart';
import 'package:shoes_app/models/shoe_model.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;

  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text("\$${widget.shoe.price}"),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outlined),
          onPressed: () => removeItemFromCart(widget.shoe),
        ),
      ),
    );
  }
}
