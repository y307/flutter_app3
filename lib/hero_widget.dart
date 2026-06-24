import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
          tag: 'hero1',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/bg2.jpeg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
              color: Colors.teal,
              colorBlendMode: BlendMode.darken, // Фильтр цвета под приложение
            ),
          ),
        ),
        FittedBox(
          child: Text(title,
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
            letterSpacing: 50,
          ),),
        ),
      ],
    );
  }
}
