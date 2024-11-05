import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/food_controller.dart';
import 'package:get/get.dart';

class FoodPage extends StatelessWidget {
  FoodPage({super.key});
  final FoodController foodController = Get.put(FoodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        actions: const [Icon(Icons.gif_box_outlined)],
        title: const Text(
          "All Categories",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Colors.grey[400],
      body: Obx(() {
        if (foodController.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Expanded(
              child: ListView.builder(
                itemCount: foodController.foodList.length,
                itemBuilder: (context, index) {
                  var foodItem = foodController.foodList[index];
                  return ZoomIn(
                    child: Card(
                      color: index.isEven ? Colors.grey[400] : Colors.grey[100],
                      child: Row(
                        children: [
                          // Food Image
                          Container(
                            width: 120,
                            height: 120,
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
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                          ),
                          // Food Info
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          foodItem.instructions!.isNotEmpty
                                      ? foodItem.instructions![0]
                                      : 'No instructions available',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    color: Colors.black54,
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
              ),
            ),
          );
        }
      }),
    );
  }
}
