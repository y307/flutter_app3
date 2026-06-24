import 'package:flutter/material.dart';
import 'package:flutter_app3/login_page.dart';
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
              const HeroWidget(title: 'Wellcome',),
              //=========================
              const SizedBox(height: 20),
              //=========================
              FittedBox(
                child: Text(
                  'Flutter Mapp',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    letterSpacing: 50,
                  ),
                ),
              ),
              //========================
              const SizedBox(height: 20),
              //========================
              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  ); // Navigator.pushReplacementNamed(context, '/settings');
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                child: const Text('Get Started'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  ); // Navigator.pushReplacementNamed(context, '/settings');
                },
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
