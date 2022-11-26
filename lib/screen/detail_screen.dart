import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_cource/widget/costum_button.dart';

import '../data/bookList.dart';
import '../widget/costum_star_icon.dart';
import '../widget/custom_row_cart.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFD),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, top: 14, right: 12, bottom: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    Image.asset(
                      'asset/dots.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
              ),
              Image.asset(
                books[Get.arguments].image.toString(),
                height: 320,
                width: 212,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                books[Get.arguments].name.toString(),
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                books[Get.arguments].author.toString(),
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CostumStarIcon(
                    color: Colors.amber,
                  ),
                  CostumStarIcon(
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    books[Get.arguments].rate.toString(),
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  books[Get.arguments].descrption.toString(),
                  style: TextStyle(
                    height: 1.5,
                    wordSpacing: 1,
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  RowCart(
                    text: 'Preview',
                    image: 'asset/Vector.png',
                  ),
                  RowCart(
                    text: 'Reviews',
                    image: 'asset/Vector-2.png',
                  ),
                ],
              ),
              const SizedBox(
                height: 36,
              ),
              CostumButton(
                onPressed: () {},
                text: 'Buy Now for \$46.99',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
