import 'package:flutter/material.dart';

import 'package:islami/ui/home/hadeth/Hadeth.dart';

import '../MyThemedata.dart';

class HadethDetailsScreen extends StatelessWidget {
 static const String routeName="HadethDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                MyThemeData.isDarkEnabled?
                "assets/images/background_dark.png":
                "assets/images/main_background.png"
            ),
            fit: BoxFit.fill,
          )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: Text(args.content,
                    textAlign:TextAlign.center ,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 48,horizontal: 24),

              ),
            ),
          ],
        ),
      ),
    );
  }
}
