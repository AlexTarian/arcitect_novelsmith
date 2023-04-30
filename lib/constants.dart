import 'package:flutter/material.dart';
import 'main.dart';

const Color usaflBlue = Color(0xFF233271);
const Color usaflAccent = Color(0xFF5b9bd5);
final Color themeColor = MyApp.themeNotifier.value == ThemeMode.light ? const Color(0xFF233271) : const Color(0xFF5b9bd5);
final Color themeTextColor = MyApp.themeNotifier.value == ThemeMode.light ? Colors.white: Colors.white;
const TextStyle chalk = TextStyle(color: Color(0xFFCED8F7),fontFamily: 'PermanentMarker');
const TextStyle labelText = TextStyle(color: Color(0xFFCED8F7),fontFamily: 'PermanentMarker',fontSize: 24.0);

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF3057E1),
  primarySwatch: customPrimaryColor,
  appBarTheme: const AppBarTheme(color: usaflBlue),
  primaryColor: const Color(0xFFCED8F7),
  primaryColorLight: const Color(0xFF3057E1),
  primaryColorDark: const Color(0xFF3057E1),
  splashColor: usaflAccent,
  dialogBackgroundColor: Colors.white,
  textTheme: const TextTheme(
    bodyText1: TextStyle(),
    bodyText2: TextStyle(),
  ).apply(
    bodyColor: const Color(0xFFCED8F7), displayColor: const Color(0xFFCED8F7),
  ),
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF222222),
  primarySwatch: customAccentColor,
  appBarTheme: const AppBarTheme(color: usaflAccent),
  primaryColor: usaflAccent,
  primaryColorLight: usaflBlue.withOpacity(0.5),
  primaryColorDark: const Color(0xFF222222),
  splashColor: usaflAccent,
  //fontFamily: 'Kodchasan',
  brightness: Brightness.dark,
);

final ThemeData aestheticTheme = ThemeData(
  scaffoldBackgroundColor: const Color(0xFF222222),
  primarySwatch: customAccentColor,
  appBarTheme: const AppBarTheme(color: usaflBlue),
  primaryColor: const Color(0xFFfe75fe),
  primaryColorLight: const Color(0x757e00ff),
  primaryColorDark: const Color(0xFF120458),
  splashColor: const Color(0xFF7e00ff),
  fontFamily: 'Kodchasan',
  brightness: Brightness.dark,
);

Map<int, Color> primaryColorCodes =
{
  50:const Color.fromRGBO(35,50,113, .1),
  100:const Color.fromRGBO(35,50,113, .2),
  200:const Color.fromRGBO(35,50,113, .3),
  300:const Color.fromRGBO(35,50,113, .4),
  400:const Color.fromRGBO(35,50,113, .5),
  500:const Color.fromRGBO(35,50,113, .6),
  600:const Color.fromRGBO(35,50,113, .7),
  700:const Color.fromRGBO(35,50,113, .8),
  800:const Color.fromRGBO(35,50,113, .9),
  900:const Color.fromRGBO(35,50,113, 1),
};

MaterialColor customPrimaryColor = MaterialColor(0xFF233271, primaryColorCodes);

Map<int, Color> accentColorCodes =
{
  50:const Color.fromRGBO(91,155,213, .1),
  100:const Color.fromRGBO(91,155,213, .2),
  200:const Color.fromRGBO(91,155,213, .3),
  300:const Color.fromRGBO(91,155,213, .4),
  400:const Color.fromRGBO(91,155,213, .5),
  500:const Color.fromRGBO(91,155,213, .6),
  600:const Color.fromRGBO(91,155,213, .7),
  700:const Color.fromRGBO(91,155,213, .8),
  800:const Color.fromRGBO(91,155,213, .9),
  900:const Color.fromRGBO(91,155,213, 1),
};

MaterialColor customAccentColor = MaterialColor(0xFF5b9bd5, primaryColorCodes);
