import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_cource/screen/detail_screen.dart';

import '../data/bookList.dart';
import '../widget/costum_appber.dart';
import '../widget/costum_star_icon.dart';
import '../widget/costum_titleList.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CostumAppbar(),
              const TitleBook(),
              const SizedBox(height: 39),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 34),
                        child: InkWell(
                          onTap: () {
                            Get.to(const DetailScreen(), arguments: index);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                books[index].image.toString(),
                                width: 72,
                                height: 106,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 26),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 4),
                                      child: Text(
                                        books[index].name.toString(),
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 16),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 7),
                                      child: Text(
                                        books[index].author.toString(),
                                        style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12),
                                      ),
                                    ),
                                    Text(
                                      books[index].price.toString(),
                                      style:
                                          const TextStyle(color: Colors.black),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Row(
                                        children: [
                                          CostumStarIcon(
                                            color: const Color(0xffFFC41F),
                                          ),
                                          CostumStarIcon(
                                            color: const Color(0xffFFC41F),
                                          ),
                                          CostumStarIcon(
                                            color: const Color(0xffFFC41F),
                                          ),
                                          CostumStarIcon(
                                            color: const Color(0xffFFC41F),
                                          ),
                                          CostumStarIcon(
                                            color: const Color(0xffEDEDEF),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 23);
                    },
                    itemCount: books.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
