import 'package:flutter/material.dart';
class LanguageBottomSheeet extends StatefulWidget {


  @override
  State<LanguageBottomSheeet> createState() => _LanguageBottomSheeetState();
}

class _LanguageBottomSheeetState extends State<LanguageBottomSheeet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItem("English"),
          getSelectedItem("العربيه"),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text(text,style:TextStyle(
          fontSize: 24,
          color: Theme.of(context).primaryColor,
        ),
        ),
        Icon(Icons.check,
          color: Theme.of(context).colorScheme.secondary,
        ),


      ],
    );
  }

  Widget getUnSelectedItem(String text) {
    return  Text(text,style: Theme.of(context).textTheme.titleMedium
    );
  }
}

