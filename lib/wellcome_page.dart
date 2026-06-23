import 'package:flutter/material.dart';
import 'package:flutter_app3/widget_tree.dart';
import 'package:flutter_app3/hero_widget.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeroWidget(),
              //////////////////////////
              const SizedBox(height: 20),
              //////////////////////////
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return WidgetTree();
                      },
                    ),
                  ); // Navigator.pushReplacementNamed(context, '/settings');
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
