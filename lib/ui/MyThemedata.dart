import 'package:flutter/material.dart';

class MyThemeData{
  static bool isDarkEnabled =false;
  static const Color lightPrimary = Color(0XFFB7935F);
  static const Color darkPrimary = Color(0XFF141A2E);
  static const Color darkSecondary = Color(0XFFFACC1D);

static ThemeData lightTheme = ThemeData(
  textTheme: TextTheme(
    headlineSmall:  TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyMedium:  TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

  ),

  cardTheme: CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 18,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
      )
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.white,
    selectedIconTheme: IconThemeData(
      size: 32,
    ),
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 28,
      )
  ),
  scaffoldBackgroundColor: Colors.transparent,
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFB7935F),
    background:Colors.white ,
    primary: Color(0xFFB7935F),
    secondary: Color(0x87B7935F),
    onPrimary: Colors.white,
    onSecondary: Colors.black,

  ),
  useMaterial3: true,
  dividerColor: lightPrimary,
  bottomSheetTheme:const BottomSheetThemeData(
      backgroundColor: Colors.white
  ) ,
);
static ThemeData darkTheme = ThemeData(
  textTheme: TextTheme(
    headlineSmall:  TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyMedium:  TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

  ),

  cardTheme: CardTheme(
      color: darkPrimary,
      surfaceTintColor: Colors.transparent,
      elevation: 18,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18)
      )
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: darkSecondary,
    unselectedItemColor: Colors.white,
    selectedIconTheme: IconThemeData(
      size: 32,
    ),
  ),
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 28,
      )
  ),
  scaffoldBackgroundColor: Colors.transparent,
  colorScheme: ColorScheme.fromSeed(seedColor: darkPrimary,
    background: darkPrimary,
    primary: darkPrimary,
    secondary: darkSecondary,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
),
  dividerColor:darkSecondary ,
  bottomSheetTheme:const BottomSheetThemeData(
    backgroundColor: darkPrimary
  ) ,
  useMaterial3: true,
  );


}
