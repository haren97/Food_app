import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/global_theme_data.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: GlobalThemData.lightColorScheme.onPrimary,
      shadowColor: GlobalThemData.lightColorScheme.secondary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              decoration: BoxDecoration(
                  color: GlobalThemData.lightColorScheme.onPrimary,
                  borderRadius: const BorderRadius.all(Radius.circular(12))),
            ),
            const SizedBox(height: 10),
            const Text(
              "Rose Garden Restaurant",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            const Text("Burger • Chicken • Wings"),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star,
                        color: GlobalThemData.lightColorScheme.secondary,
                        size: 20),
                    const SizedBox(width: 5),
                    const Text("4.7"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.delivery_dining,
                        color: GlobalThemData.lightColorScheme.secondary,
                        size: 20),
                    const SizedBox(width: 5),
                    const Text("Free"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.access_time,
                        color: GlobalThemData.lightColorScheme.secondary,
                        size: 20),
                    const SizedBox(width: 5),
                    const Text("20 min"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
