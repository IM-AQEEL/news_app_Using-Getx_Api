import 'package:flutter/material.dart';
import 'package:news_app/config/colors.dart';

class Newstile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String datetime;
  final String name;
  final VoidCallback onTap;

  const Newstile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.datetime,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🖼️ Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imageUrl,
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(width: 10),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/652750800/vector/pakistan.jpg?s=612x612&w=0&k=20&c=x14F0XneN74dfVp2qL_vfT8JCZaHRB8ZKUIsrf0lqGY=',
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        name,
                        style: TextStyle(
                          color: lightFontColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    title,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: lightFontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    datetime,
                    style: TextStyle(
                      color: lightFontColor.withOpacity(0.7),
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
