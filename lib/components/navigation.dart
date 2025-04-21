import 'package:get/get.dart';
import 'package:news_app/homepage/pages/articalpage/articalpage.dart';
import 'package:news_app/homepage/pages/profliepage/profile.dart';
import 'package:news_app/screens/home.dart';

class BottomNavigationController extends GetxController {
  RxInt index = 0.obs;

  // pages
  var pages = [Home(), Articalpage(), Profile()].obs;
}
