import 'package:animate_do/animate_do.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/food_controller.dart';
import 'package:get/get.dart';

class MyTabbar extends StatelessWidget {
  MyTabbar({super.key});

  final FoodController foodController = Get.put(
    FoodController(),
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: <Widget>[
            ButtonsTabBar(
              radius: 5,
              contentPadding: const EdgeInsets.symmetric(horizontal: 6),
              borderWidth: 0.6,
              borderColor: Colors.black,
              center: false,
              decoration: BoxDecoration(color: Colors.grey[280]),
              unselectedBorderColor: Colors.white,
              height: 60,
              tabs: const [
                Tab(
                  child: Text(
                    "All Recipes",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Food Category",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Food Category",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Food Category",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Obx(() {
                    if (foodController.isLoading.value) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return GridView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1),
                        itemCount: foodController.foodList.length,
                        itemBuilder: (context, index) {
                          var foodItem = foodController.foodList[index];
                          return ZoomIn(
                            child: Card(
                              color: Colors.grey[150],
                              child: Column(
                                children: [
                                  // Food Image
                                  Container(
                                    width: 300,
                                    height: 150,
                                    margin: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(95),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: Image.network(
                                        foodItem.image ??
                                            'https://via.placeholder.com/150',
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(Icons.error),
                                      ),
                                    ),
                                  ),
                                  // Food Info
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: SizedBox(
                                      width: 320,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            foodItem.name ?? 'No name',
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            foodItem.instructions != null &&
                                                    foodItem.instructions!
                                                        .isNotEmpty
                                                ? foodItem.instructions![0]
                                                : 'No instructions available',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            foodItem.rating!.isNaN
                                                ? "${foodItem.rating!}"
                                                : '⭐ o',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
                  }),

                  const Text("hello"),
                  const Text("hello"),
                  const Text("hii"),

                  // FoodPage(),
                  // AllCategoriesPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/views/widgets/all_categories_page.dart';
// import 'package:flutter_application_1/views/widgets/food_page.dart';

// class MyTabbar extends StatelessWidget {
//   const MyTabbar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Column(
//         children: <Widget>[
//           ButtonsTabBar(
//             radius: 5,
//             contentPadding: const EdgeInsets.symmetric(horizontal: 12),
//             borderWidth: 2,
//             borderColor: Colors.transparent,
//             center: true,
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 colors: <Color>[
//                   Color(0x0FFF7622),
//                   Color(0x0FFF8622),
//                   Color(0x0FFF0622),
//                 ],
//               ),
//             ),
//             unselectedLabelStyle: const TextStyle(color: Colors.black),
//             labelStyle: const TextStyle(color: Colors.white),
//             height: 56,
//             tabs: const [
//               Tab(
//                 child: Text("All"),
//               ),
//               Tab(
//                 child: Text("Food Category"),
//               ),
//             ],
//           ),
//           Container(
//             height: 450,
//             width: 350,
//             child: TabBarView(
//               children: [
//                 Text("hoem"),
//                 Text("hiii"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
