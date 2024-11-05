import 'dart:convert';

import 'package:flutter_application_1/models/food_modwl.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class FoodController extends GetxController {
  var foodList = <Recipe>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchRecipes();
    super.onInit();
  }

  Future fetchRecipes() async {
    try {
      isLoading(true);
      var response = await http.get(
        Uri.parse("https://dummyjson.com/recipes"),
      );
      if (response.statusCode == 200) {
        FoodModel foodData = FoodModel.fromJson(
          json.decode(response.body),
        );
        for (var element in foodData.recipes!) {
          foodList.value.add(element);
        }
      } else {
        return response.printError();
      }
    } finally {
      isLoading(false);
    }
  }
}
