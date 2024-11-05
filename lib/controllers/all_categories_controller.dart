import 'dart:convert';
import 'package:flutter_application_1/models/all_categories_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AllCategoriesController extends GetxController {
  var myCategoriesList = <Category>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  Future fetchCategories() async {
    try {
      isLoading(true); // Set loading to true
      var response = await http.get(
        Uri.parse('https://www.themealdb.com/api/json/v1/1/categories.php'),
      );

      if (response.statusCode == 200) {
        AllCategoriesModel productsData =
            AllCategoriesModel.fromJson(json.decode(response.body));
        update();

        for (var element in productsData.categories!) {
          myCategoriesList.value.add(element);
        }
      } else {
        // Handle the error response here if needed
        print('Failed to fetch products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error fetching products: $e');
    } finally {
      isLoading(false); // Set loading to false
    }
  }
}
