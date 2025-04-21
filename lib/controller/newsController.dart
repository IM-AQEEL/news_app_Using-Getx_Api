import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  RxBool isloading = false.obs;

  void initState() {
    super.onInit();
  }

  //
  Future<void> getnews() async {
    isloading.value = true;
    try {
      await Future.delayed(Duration(seconds: 2));
      final Uri uri = Uri.parse(
          'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=a501b3f0705043ef9bd7492084003408');
      var response = await http.get(uri);
      if (response.statusCode == 200) {
        print(response.body);
      } else {
        print('Failed to load news: ${response.statusCode}');
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isloading.value = false;
    }
  }
}
