import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/ChapterDetails/VerseWidget.dart';
class ChapterDetailsScreen extends StatefulWidget {
  static const String routeName = "ChapterDetailsScreen";
  @override
  State<ChapterDetailsScreen> createState() => _ChapterDetailsScreenState();
}
class _ChapterDetailsScreenState extends State<ChapterDetailsScreen> {
  @override
  Widget build(BuildContext context) {
   ChapterDetailsArgs args =ModalRoute.of(context)?.settings.arguments as ChapterDetailsArgs;
   if(verses.isEmpty) {
     loadFile(args.index);
   }
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
          fit: BoxFit.fill,
        )),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: verses.isEmpty?
              Center(child: CircularProgressIndicator(),)
              :Card(
               margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
                child: ListView.separated(
                  separatorBuilder: (context,index) =>
                      Container(color: Theme.of(context).primaryColor,
                        width:double.infinity,
                        height: 2,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      ),
            itemBuilder: (context, index) {
                return VerseWidget(verses[index],index);
            },
            itemCount: verses.length,
          ),
              ),
        )
    );
  }
  List<String> verses = [];
  void loadFile(int index) async {
    //function to read suras contents
    // function (rootBundle) return future of string ..non string
    // انا مش عايز استني الفانكشن لحاد ما تخلص ف هستخدم كلمه await بس لازم ابقي asyn

    String filecontent = await rootBundle.loadString("assets/files/${index + 1}.txt");
    verses = filecontent.split("\n");
    print(filecontent);
    setState(() {});

  }
}

class ChapterDetailsArgs {
  //data member or data class
  String title;
  int index;
  ChapterDetailsArgs(this.title, this.index);
}
