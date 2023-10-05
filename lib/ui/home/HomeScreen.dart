import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/Hadeth_Tab%20.dart';
import 'package:islami/ui/home/quran/quran_tab.dart';
import 'package:islami/ui/home/radio/RadioTab.dart';
import 'package:islami/ui/home/tasbeh/tasbehTab.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName ="home";
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectedtabindex=0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
          fit: BoxFit.fill,
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
       appBar: AppBar(
         title: Text("Islami"),
       ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedtabindex=index;
            });

          },
         currentIndex: selectedtabindex,
          items: [
            BottomNavigationBarItem(
               backgroundColor: Theme.of(context).primaryColor,
               icon: ImageIcon(AssetImage("assets/images/icon_quran.png")),
             label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png")),
                label: "Sebha"),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png")),
                label: "Radio"),
          ],
        ),
        body:  tabs[selectedtabindex],

      ),
    );

  }
  List<Widget> tabs=[
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];
}
