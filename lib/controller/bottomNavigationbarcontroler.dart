import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/components/navigation.dart';

class BottomNavigationBarControllerWidget extends StatelessWidget {
  const BottomNavigationBarControllerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController controller =
        Get.put(BottomNavigationController());

    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.6,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 83, 81, 81),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildNavItem(controller, 0, Icons.home),
            _buildNavItem(controller, 1, Icons.search),
            _buildNavItem(controller, 2, Icons.person),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
      BottomNavigationController controller, int index, IconData icon) {
    return InkWell(
      onTap: () => controller.index.value = index,
      child: Obx(
        () => AnimatedContainer(
          duration: Duration(milliseconds: 200),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: controller.index.value == index
                ? Colors.blue[700]
                : Colors.blue[300],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, size: 25, color: Colors.white),
        ),
      ),
    );
  }
}
