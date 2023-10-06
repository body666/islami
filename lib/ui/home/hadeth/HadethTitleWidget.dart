///file to show names of suras
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/ChapterDetails/ChapterDetailsScreen.dart';
import 'package:islami/ui/HadethDetails/HadethDetailsScreen.dart';
import 'package:islami/ui/home/hadeth/Hadeth.dart';
import 'Hadeth.dart';
class HadethTitleWidget extends StatelessWidget {
Hadeth hadeth;
HadethTitleWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
  Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
  arguments: Hadeth,
  );

      },
      child: Container(
        alignment: Alignment.center,
          padding: EdgeInsets.all(8),
          child: Text(hadeth.title,style:
          Theme.of(context).textTheme.titleMedium,
          )
      ),
    );
  }
}
