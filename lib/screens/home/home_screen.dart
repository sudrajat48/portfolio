import 'package:flutter/material.dart';
import 'package:portofolio/screens/home/component/home_banner.dart';
import 'package:portofolio/screens/home/component/my_project.dart';
import 'package:portofolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(children: [
      HomeBanner(),
      MyProject(),
    ]);
  }
}
