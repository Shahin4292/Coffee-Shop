import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(color: const Color(0xFF212325), boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          spreadRadius: 1,
          blurRadius: 8,
        )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Color(0xFFE57734),
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_outlined,
                // color: Color(0xFFE57734),
                color: Colors.white,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                // color: Color(0xFFE57734),
                color: Colors.white,
                size: 35,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                // color: Color(0xFFE57734),
                color: Colors.white,
                size: 35,
              )),
        ],
      ),
    );
  }
}
