import 'package:flutter/material.dart';
import 'package:news_app/config/colors.dart';

class Trandingpage extends StatelessWidget {
  final String title;
  final String date;
  final String ImageUrl;

  final String author;
  final String tranding;
  const Trandingpage(
      {super.key,
      required this.title,
      required this.date,
      required this.ImageUrl,
      required this.author,
      required this.tranding});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            // height: 300,
            width: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                20,
              ),
              color: lightLableColor,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 200,
                    // width: 275,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: lightFontColor),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          fit: BoxFit.cover,
                          'https://media.istockphoto.com/id/652750800/vector/pakistan.jpg?s=612x612&w=0&k=20&c=x14F0XneN74dfVp2qL_vfT8JCZaHRB8ZKUIsrf0lqGY='),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${tranding}',
                        style: TextStyle(
                          color: lightFontColor,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '${date}',
                        style: TextStyle(
                          color: lightFontColor,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          maxLines: 2,
                          '${title}',
                          style: TextStyle(
                              color: lightFontColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                //  SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Ali Hassan${author}',
                        style: TextStyle(color: lightFontColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
