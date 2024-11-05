import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/auth_screens/forget_password.dart';
import 'package:flutter_application_1/views/widgets/my_code_input.dart';
import 'package:get/route_manager.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () => Get.to(const ForgetPassword()),
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
                const Column(
                  children: [
                    Text(
                      "Verification",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "We've send a verification code to your email",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "example@gmail.com",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 570,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 239, 238, 238),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("CODE"),
                            Row(
                              children: [
                                Text(
                                  "Resnd ",
                                  style: TextStyle(),
                                ),
                                Text("in .50 sec"),
                              ],
                            ),
                          ],
                        ),
                        const MyCodeInput(),
                        const SizedBox(
                          height: 12,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () => Get.to(()),
                          child: Container(
                            height: 65,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.orange,
                            ),
                            child: const Center(child: Text("VERIFY")),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
