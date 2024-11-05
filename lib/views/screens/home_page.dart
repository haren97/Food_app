import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/global_theme_data.dart';
import 'package:flutter_application_1/controllers/food_controller.dart';
import 'package:flutter_application_1/views/widgets/all_categories_page.dart';
import 'package:flutter_application_1/views/widgets/my_tabbar.dart';
import 'package:get/get.dart';
import 'package:hugeicons/hugeicons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final FoodController foodController = Get.put(
    FoodController(),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[300],
          leading: const HugeIcon(
              icon: HugeIcons.strokeRoundedMenu01, color: Colors.black),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Stack(
                  children: [
                    const Icon(HugeIcons.strokeRoundedCreditCard),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 12,
                          minHeight: 12,
                        ),
                        child: const Text(
                          '2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ],
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "DELIVER TO",
                style: TextStyle(color: Colors.orange, fontSize: 14),
              ),
              Text(
                "Harin awad",
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                const Text(
                  "Hey Harin, Good Afternoon!",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: "Search dishes, restaurants",
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "All Categories",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => AllCategoriesPage());
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            color: GlobalThemData.lightColorScheme.onSecondary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyTabbar()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
