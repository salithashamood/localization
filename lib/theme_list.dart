import 'package:flutter/material.dart';

List<ThemeData> getThemes() {
  return [
    ThemeData(
      backgroundColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white30,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.yellow,
      scaffoldBackgroundColor: Colors.blue,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.black)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
        headline3: TextStyle(
          color: Colors.black,
          fontSize: 22,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.purple,
      scaffoldBackgroundColor: Colors.blueGrey,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.black,
      scaffoldBackgroundColor: Colors.greenAccent,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.white,
          fontSize: 26,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontSize: 26,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.red,
      scaffoldBackgroundColor: Colors.grey,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.brown,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
        headline3: TextStyle(
          color: Colors.black,
          fontSize: 30,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.cyan,
      scaffoldBackgroundColor: Colors.purple,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.indigo,
      scaffoldBackgroundColor: Colors.green,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.white)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        headline3: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.deepOrange,
      scaffoldBackgroundColor: Colors.lightGreenAccent,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.black)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
        headline3: TextStyle(
          color: Colors.black,
          fontSize: 16,
        ),
      ),
    ),
    ThemeData(
      backgroundColor: Colors.purpleAccent,
      scaffoldBackgroundColor: Colors.lightGreenAccent,
      appBarTheme:
          AppBarTheme(actionsIconTheme: IconThemeData(color: Colors.black)),
      textTheme: const TextTheme(
        headline1: TextStyle(
            color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
        headline2: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        headline3: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    ),
  ];
}
