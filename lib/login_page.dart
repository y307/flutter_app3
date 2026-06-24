import 'package:flutter/material.dart';
import 'package:flutter_app3/hero_widget.dart';
import 'package:flutter_app3/widget_tree.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPW = TextEditingController();

  String confirmedEmail = '123';
  String confirmedPW = '456';

  @override
  void initState() {
    //ToDo
    super.initState();
  }

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPW.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            HeroWidget(title: 'Login'),
            //=========================
            SizedBox(height: 20),
            //=========================
            TextField(
              controller: controllerEmail,
              decoration: InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            //=========================
            SizedBox(height: 10),
            //=========================
            TextField(
              controller: controllerPW,
              decoration: InputDecoration(
                hintText: 'passward',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            //==============
            ElevatedButton(
              onPressed: () {
                onLoginPressed(); // Navigator.pushReplacementNamed(context, '/settings');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  } //Widget build

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPW == controllerPW.text) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    } // if
  } // onLoginPressed
}// class