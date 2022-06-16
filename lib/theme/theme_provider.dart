import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class QuranThemes {
  static final darkTheme = ThemeData(
    primaryColorDark: Colors.grey,
    primaryColorLight: Colors.orangeAccent,
    //text color  white black
    indicatorColor: Colors.orange,
    primarySwatch: Colors.orange,
    bottomAppBarColor: Colors.orange,
    dividerColor: const Color(0xFFD2D6DA),
    // stroke color = white orange
    cardColor: Colors.orange,
    canvasColor: Colors.orange,
    focusColor: const Color(0xFF808BA1),
    secondaryHeaderColor: const Color(0xFFD2D6DA),
    //white(d2d6da) black color
    scaffoldBackgroundColor: const Color(0xFF666666),
    primaryColor: const Color(0xFF67748E),
    //blue 6778e combo , peach
    iconTheme: const IconThemeData(color: Colors.white),
    // icon color white and orange
    // textSelectionTheme:
    // const TextSelectionThemeData(cursorColor: Colors.orange),
    colorScheme: const ColorScheme.dark(),
    textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.white),
  );
  static final lightTheme = ThemeData(
    primaryColorDark: Colors.grey,
    primaryColorLight: Colors.orangeAccent,
    canvasColor: Colors.orange,
    focusColor: Colors.white,
    secondaryHeaderColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: const Color(0xFFFFC896),
    colorScheme: ColorScheme.light(),
    iconTheme: const IconThemeData(color: Color(0xFFE86F00)),
    indicatorColor: Colors.orange,
    primarySwatch: Colors.orange,
    bottomAppBarColor: Colors.orange,
    dividerColor: const Color(0xFFE86F00),
    cardColor: Colors.orange,
    textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.black),
    // textSelectionTheme:
    // const TextSelectionThemeData(cursorColor: Colors.orange),
  );
}
