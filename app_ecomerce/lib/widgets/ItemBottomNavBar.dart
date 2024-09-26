import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottomNavBar extends StatelessWidget {
  const ItemBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '\$120',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
                fontSize: 25,
              ),
            ),
            ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.cart_badge_plus),
            label: const Text(
              'Add To Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
             ),
             style: ButtonStyle(
              backgroundColor:const WidgetStatePropertyAll(
                const Color(0xFF4C53A5),
              ),

              padding:const WidgetStatePropertyAll(
                const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 13,
                ),
              ),

              shape: WidgetStatePropertyAll<RoundedRectangleBorder>
              (RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                ),
                ),
             ),
             ),
          ],
        ),
      ),
    );
  }
}