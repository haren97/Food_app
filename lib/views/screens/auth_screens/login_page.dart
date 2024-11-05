import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/screens/auth_screens/forget_password.dart';
import 'package:flutter_application_1/views/widgets/location_access.dart';
import 'package:flutter_application_1/views/widgets/my_textfeild.dart';
import 'package:flutter_application_1/views/screens/auth_screens/signup_page.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
              ),
              const Column(
                children: [
                  Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "please sigin into youre existing account",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height * 0.6,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 239, 238, 238),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      FadeInRight(
                          curve: Curves.easeInOutBack,
                          child: const MyTextfeild(
                            labletext: "EMAIL",
                            myObscureText: false,
                            hinttext: "example@gmail.com",
                          )),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      FadeInRight(
                          curve: Curves.easeInOutBack,
                          child: const MyTextfeild(
                            labletext: "PASSWORD",
                            myObscureText: true,
                            hinttext: ".........",
                            suffixicon: Icon(Icons.remove_red_eye),
                          )),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Checkbox(value: false, onChanged: null),
                              Text("Remember me"),
                            ],
                          ),
                          GestureDetector(
                              onTap: () => Get.to(() => const ForgetPassword()),
                              child: const Text(
                                "Forget password",
                                style: TextStyle(color: Colors.green),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      FadeInRight(
                        child: Container(
                          height: 65,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.green,
                          ),
                          child: GestureDetector(
                              onTap: () => Get.to(() => const LocationAccess()),
                              child: const Center(child: Text("LOGIN"))),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Don't have account?"),
                          GestureDetector(
                              onTap: () => Get.to(() => const SignupPage()),
                              child: const Text(
                                "SIGN UP",
                                style: TextStyle(color: Colors.green),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Center(child: Text("Or")),
                      const SizedBox(
                        height: 12,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 800),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.facebook,
                                  size: 75,
                                  color: Colors.blue,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.apple,
                                  size: 75,
                                  color: Colors.black,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.wechat,
                                  size: 75,
                                  color: Colors.green,
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
