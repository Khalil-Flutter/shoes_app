import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../models/shoe_model.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function() onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.09),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: <Widget>[
          Image.asset(
            height: 260,
            shoe.imagePath,
            fit: BoxFit.fitWidth,
          ),
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    shoe.description,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            shoe.name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            "\$${shoe.price}",
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: onTap,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(11),
                            ),
                          ),
                          child: Icon(
                            Iconsax.add,
                            color: Theme.of(context).canvasColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
