import 'package:flutter/material.dart';
import 'package:islami/ui/home/hadeth/Hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
 static const String routeName="HadethDetailsScreen";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(
                  child: Text(args.content,
                    textAlign:TextAlign.center ,
                    style: TextStyle(
                    fontSize: 28,

                  ),),
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
