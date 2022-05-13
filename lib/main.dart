import 'package:admin_panel/components/drawer.dart';
import 'package:admin_panel/pages/dashboard.dart';
import 'package:admin_panel/providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:admin_panel/providers/mytheme.dart' as my_theme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

bool isDark = true;
ValueNotifier<ThemeMode> _themeNotifier = ValueNotifier(ThemeMode.dark);

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: _themeNotifier,
      builder: (_, mode, __) {
        ThemeLoader(mode == ThemeMode.dark);
        return MaterialApp(
          title: 'Admin Panel',
          theme: my_theme.load(),
          darkTheme: my_theme.load(),
          themeMode: mode,
          debugShowCheckedModeBanner: false,
          home: const MyHomePage(title: 'Admin Panel'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
        children: [
          const SizedBox(
            width: 256,
            height: double.infinity,
            child: MyDrawer(),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(10),
                  height: kToolbarHeight,
                  child: Row(
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 30,
                          color: CustomColors.textColor,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: !isDark
                            ? Icon(
                                Icons.brightness_3,
                                color: CustomColors.textColor,
                              )
                            : Icon(
                                Icons.brightness_7,
                                color: CustomColors.textColor,
                              ),
                        onPressed: () {
                          isDark = !isDark;
                          _themeNotifier.value =
                              isDark ? ThemeMode.dark : ThemeMode.light;
                        },
                      ),
                    ],
                  ),
                ),
                Expanded(child: Dashboard()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
