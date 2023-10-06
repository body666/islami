import 'package:flutter/material.dart';
import 'package:islami/ui/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami/ui/MyThemedata.dart';
import 'package:islami/ui/home/HomeScreen.dart';
import 'ui/HadethDetails/HadethDetailsScreen.dart';
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
      theme:MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,

      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ChapterDetailsScreen.routeName: (_)=>ChapterDetailsScreen(),
         HadethDetailsScreen.routeName :(_)=>HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}
