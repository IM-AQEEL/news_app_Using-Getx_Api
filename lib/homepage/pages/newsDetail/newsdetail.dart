import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/config/colors.dart';

class Newsdetail extends StatelessWidget {
  const Newsdetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 20),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back_ios)),
                    Text('Back')
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://cdn.pixabay.com/photo/2025/01/29/06/44/elephants-9367271_1280.jpg',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          'This picture is taken from pixabay.com  taken from pixabay.com',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '12 May 2023',
                    style: TextStyle(color: lightLableColor),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Ali Hassan',
                        style: TextStyle(color: lightLableColor),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                  Text(
                    'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32',
                    style: TextStyle(color: lightLableColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
