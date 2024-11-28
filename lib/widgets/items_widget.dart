import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  ItemsWidget({super.key});

  List img = ["Latte", "Espresso", "Cold Coffee", "Black Coffee"];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: (150 / 195),
        children: [
          for (int i = 0; i < img.length; i++)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 13),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xFF212325),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 8,
                    )
                  ]),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  "assets/images/${img[i]}.png",
                  width: 120,
                  height: 120,
                ),
              ),
            )
        ]);
  }
}