import 'package:flutter/material.dart';
import 'package:flutter_app3/notifiers.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, required this.title});

  final String title;

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0;
  String? menuItems = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // в StatefulWidget нужно использовать widget.title для доступа к свойствам виджета
        // в StatelessWidget можно использовать title напрямую
        title: Text(widget.title),
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context); // Возврат на предыдущую страницу
          },
        ),
        // automaticallyImplyLeading: true, // Кнопка назад в AppBar
      ),
      body: SingleChildScrollView(
        // widget SingleChildScrollView() для прокрутка страницы
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DropdownButton<String>(
                value: menuItems,
                items: [
                  DropdownMenuItem(value: 'Flutter', child: Text('Flutter')),
                  DropdownMenuItem(value: 'Dart', child: Text('Dart')),
                  DropdownMenuItem(
                    value: 'JavaScript',
                    child: Text('JavaScript'),
                  ),
                ],
                onChanged: (String? newValue) {
                  setState(() {
                    menuItems =
                        newValue; // Обработка изменения выбранного значения
                  });
                },
              ),
              ///////////////////////////
              TextField(
                controller: controller,
                decoration: InputDecoration(border: OutlineInputBorder()),
                onEditingComplete: () {
                  setState(() {});
                },
              ),
              Text(controller.text),
              //////////////////////
              Checkbox.adaptive(
                tristate: true,
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              //////////////////////////
              CheckboxListTile.adaptive(
                tristate: true,
                title: Text('Click Me'),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value;
                  });
                },
              ),
              /////////////////
              Switch.adaptive(
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              /////////////////////////
              SwitchListTile.adaptive(
                title: Text('Switch Me'),
                value: isSwitched,
                onChanged: (bool value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
              ),
              /////////////////////////
              Slider(
                max: 10.0,
                divisions: 10,
                value: sliderValue,
                onChanged: (double value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
              ////////////////////////
              SizedBox(
                width: double.infinity,
                height: 50,
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/bg1.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              /////////////////////////
              InkWell(
                splashColor: Colors.teal, // Цвет всплеска при нажатии
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: isDarkModeNotifier.value
                      ? Colors.white38
                      : Colors.black38,
                ),
              ),
              /////////////////////////
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Text('Click Me'),
              ),
              /////////////////////////
              ElevatedButton(onPressed: () {}, child: Text('Click Me')),
              ////////////////////////
              FilledButton(onPressed: () {}, child: Text('Click Me')),
              ///////////////////////
              TextButton(onPressed: () {}, child: Text('Click Me')),
              ////////////////////////
              OutlinedButton(onPressed: () {}, child: Text('Click Me')),
              ///////////////////////
              CloseButton(onPressed: () {}),
              ///////////////////////
              BackButton(onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
