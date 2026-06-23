import 'package:flutter/material.dart';
import 'package:flutter_app3/notifiers.dart';
import 'package:flutter_app3/home_page.dart';

import 'package:flutter_app3/profile_page.dart';
import 'package:flutter_app3/settings_page.dart';
import 'package:flutter_app3/navbar_widget.dart';

List<Widget> pages = [HomePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        actions: [
          IconButton(
            onPressed: () {
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          //////////////////////////////
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) { 
                    return SettingsPage(title: 'Settings Page'); 
                  }
                ),
              );
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      //////////////////////////////////////
      body: ValueListenableBuilder<int>(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),
      ////////////////////////////////////////////////////////////////////////
      bottomNavigationBar: NavbarWidget(),
    );
  }
}
