import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:news_app/components/navigation.dart';
import 'package:news_app/controller/bottomNavigationbarcontroler.dart';

class Homepagecontroller extends StatelessWidget {
  const Homepagecontroller({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationController Controller =
        Get.put(BottomNavigationController());
    return Scaffold(
      bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10.0, left: 10, right: 10),
          child: BottomNavigationBarControllerWidget()),
      body: Obx(() => Controller.pages[Controller.index.value]),
    );
  }
}
