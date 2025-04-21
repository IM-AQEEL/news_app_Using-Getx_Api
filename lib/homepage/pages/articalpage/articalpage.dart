import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:news_app/config/colors.dart';
import 'package:news_app/homepage/newstile.dart';
import 'package:news_app/homepage/pages/articalpage/widget/search.dart';
import 'package:news_app/homepage/pages/newsDetail/newsdetail.dart';

class Articalpage extends StatelessWidget {
  const Articalpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Search(),
                ),
              ],
            ),
            //
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: lightLableColor,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Newstile(
                        onTap: () {
                          Get.to(Newsdetail());
                        },
                        imageUrl:
                            'https://media.istockphoto.com/id/1385581076/video/flag-of-pakistan-pakistani-flag-high-detail-national-flag-pakistan-wave-pattern-loopable.jpg?s=640x640&k=20&c=N8Ak0uTjpTlm8VjrY6zb7-tjx0QQ1_9_p4kuQ_yZknk=',
                        title: 'This was our country flag',
                        datetime: '1 day ago',
                        name: 'My name is Aqeel'),
                    SizedBox(height: 10),
                    Newstile(
                        onTap: () {
                          Get.to(Newsdetail());
                        },
                        imageUrl:
                            'https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/395100/395191.png',
                        title: 'Pakistan Super League 2022/23',
                        datetime: '1 day ago',
                        name: 'My name is Aqeel'),
                    SizedBox(height: 10),
                    Newstile(
                        onTap: () {
                          Get.to(Newsdetail());
                        },
                        imageUrl:
                            'https://www.aljazeera.com/wp-content/uploads/2022/08/2022-08-14T092743Z_1751041711_RC29WV922IOT_RTRMADP_3_PAKISTAN-INDEPENDENCEDAY-1.jpg?resize=1170%2C780&quality=80',
                        title:
                            'Photos: Pakistan celebrates 75th Independence Day',
                        datetime: '1 day ago',
                        name: 'My name is Aqeel'),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: lightLableColor,
                      ),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Newstile(
                                onTap: () {
                                  Get.to(Newsdetail());
                                },
                                imageUrl:
                                    'https://media.istockphoto.com/id/1385581076/video/flag-of-pakistan-pakistani-flag-high-detail-national-flag-pakistan-wave-pattern-loopable.jpg?s=640x640&k=20&c=N8Ak0uTjpTlm8VjrY6zb7-tjx0QQ1_9_p4kuQ_yZknk=',
                                title: 'This was our country flag',
                                datetime: '1 day ago',
                                name: 'My name is Aqeel'),
                            SizedBox(height: 10),
                            Newstile(
                                onTap: () {
                                  Get.to(Newsdetail());
                                },
                                imageUrl:
                                    'https://img1.hscicdn.com/image/upload/f_auto,t_ds_w_960,q_50/lsci/db/PICTURES/CMS/395100/395191.png',
                                title: 'Pakistan Super League 2022/23',
                                datetime: '1 day ago',
                                name: 'My name is Aqeel'),
                            SizedBox(height: 10),
                            Newstile(
                                onTap: () {
                                  Get.to(Newsdetail());
                                },
                                imageUrl:
                                    'https://www.aljazeera.com/wp-content/uploads/2022/08/2022-08-14T092743Z_1751041711_RC29WV922IOT_RTRMADP_3_PAKISTAN-INDEPENDENCEDAY-1.jpg?resize=1170%2C780&quality=80',
                                title:
                                    'Photos: Pakistan celebrates 75th Independence Day',
                                datetime: '1 day ago',
                                name: 'My name is Aqeel'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
