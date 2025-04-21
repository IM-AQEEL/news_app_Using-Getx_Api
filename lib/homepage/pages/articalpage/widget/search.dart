import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320,
      child: Center(
        child: TextField(
          autocorrect: true,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            fillColor: Color.fromARGB(255, 133, 131, 131),
            filled: true,
            hintText: 'Search News...',
            prefixIcon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
