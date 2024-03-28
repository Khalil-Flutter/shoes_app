import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key, required this.onTapChange});

  void Function(int)? onTapChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: GNav(
        gap: 8,
        color: Theme.of(context).colorScheme.primary,
        activeColor: Theme.of(context).colorScheme.primary,
        tabActiveBorder: Border.all(
          color: Theme.of(context).colorScheme.onSecondary,
        ),
        tabBackgroundColor: Theme.of(context).colorScheme.secondary,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 30,
        onTabChange: (value) => onTapChange!(value),
        tabs: const [
          GButton(
            icon: Iconsax.home,
            text: 'shop',
          ),
          GButton(
            icon: Iconsax.shopping_bag,
            text: 'cart',
          ),
        ],
      ),
    );
  }
}
