
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/ui/ChapterDetails/ChapterDetailsScreen.dart';
class VerseWidget extends StatelessWidget {
String content; //بيعرض الايه
int index;      // رقم الايه
VerseWidget(this.content,this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
        padding: EdgeInsets.all(8),
        child: Text('$content ${index+1}',
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
          style:
          TextStyle(
            fontSize: 20,
          ),
        )
    );
  }
}
