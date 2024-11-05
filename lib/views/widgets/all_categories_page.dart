import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/all_categories_controller.dart';
import 'package:get/get.dart';

class AllCategoriesPage extends StatelessWidget {
  AllCategoriesPage({super.key});
  final AllCategoriesController allCategoriesController = Get.put(
    AllCategoriesController(),
  );

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
        if (allCategoriesController.isLoading.value == true) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.builder(
              itemCount: allCategoriesController.myCategoriesList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ZoomIn(
                  child: Card(
                    color: (index > index - 1)
                        ? Colors.grey[400]
                        : Colors.grey[100],
                    child: Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Image.network(allCategoriesController
                              .myCategoriesList[index].strCategoryThumb!),
                        ),
                        Text(
                            style: const TextStyle(fontWeight: FontWeight.w600),
                            "${allCategoriesController.myCategoriesList[index].strCategory}"),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 6),
                          child: SizedBox(
                            height: 30,
                            child: Text(
                                overflow: TextOverflow.ellipsis,
                                "${allCategoriesController.myCategoriesList[index].strCategoryDescription}"),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        }
      }),
    );
  }
}
