import 'package:flutter/material.dart';
import 'package:islami/ui/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami/ui/home/HomeScreen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
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
              primary: Color(0xFFB7935F),
            secondary: Color(0x87B7935F),
            onPrimary: Colors.white,
            onSecondary: Colors.black,
          ),
          useMaterial3: true,
      ),

      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_)=>ChapterDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
