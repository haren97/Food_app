import 'package:flutter/material.dart';
import 'package:flutter_application_1/consts/global_theme_data.dart';
import 'package:flutter_application_1/views/screens/auth_screens/login_page.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
// whenever your initialization is completed, remove the splash screen:
    return GetMaterialApp(
      // getPages: [
      //   GetPage(
      //       name: "/",
      //       page: () => HomePage(),
      //       middlewares: [RouteStateManage()]),
      // ],
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light, //or ThemeMode.dark
      theme: GlobalThemData.lightThemeData,
      darkTheme: GlobalThemData.darkThemeData,

      home: const LoginPage(),
    );
  }
}
