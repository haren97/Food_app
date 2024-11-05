import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/home_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LocationAccess extends StatelessWidget {
  const LocationAccess({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 239, 238, 238),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  JelloIn(
                    child: const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage("assets/download.jpg"),
                      //child: Image.asset("assets/download.jpg"),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    child: SlideInUp(
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.orange,
                        ),
                        child: GestureDetector(
                            onTap: () => Get.to(() => HomePage()),
                            child:
                                const Center(child: Text("LOCATION ACCESS"))),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  SlideInUp(
                      child: const Text("DFOOD WILL ACCESS YOUR LOCATION")),
                  SlideInUp(child: const Text("ONLY WHILE USING THE APP")),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
