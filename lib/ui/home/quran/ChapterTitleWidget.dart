///file to show names of suras
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/ChapterDetails/ChapterDetailsScreen.dart';
class ChapterTitleWidget extends StatelessWidget {
String title;
int index;
ChapterTitleWidget(this.title,this.index);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(ChapterDetailsScreen.routeName,
          arguments: ChapterDetailsArgs(title, index)
        );
      },
      child: Container(
        alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(title,style:
            TextStyle(
              fontSize: 25,
            ),)
      ),
    );
  }
}
