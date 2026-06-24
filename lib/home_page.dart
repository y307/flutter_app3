import 'package:flutter/material.dart';
import 'package:flutter_app3/constants.dart';
import 'package:flutter_app3/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const HeroWidget(title: 'Home',),
            // Padding(
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Card(
                color: Colors.amber[50],
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // смещение текста влево
                    children: [
                      Text('Basic Layout', style: KTextStyle.titleTealText),
                      Text(
                        'The description of this',
                        style: KTextStyle.descriptionText,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
