import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/ui/home/hadeth/HadethTitleWidget.dart';

import 'Hadeth.dart';
class HadethTab extends StatefulWidget {

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  @override
  Widget build(BuildContext context) {
    if(allahdeth.isEmpty)
  loadhadethfile();
    return Column(
      children: [
        Image.asset("assets/images/haeder iamge.png",
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.symmetric(horizontal: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 2,
            ))
          ),
          child: Text("Hadeth",style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          )),
        ),
        Expanded(
          flex: 3,
          child: allahdeth.isEmpty? Center(child: CircularProgressIndicator())
          :ListView.separated(itemBuilder: (context,index)
              {
                return HadethTitleWidget(allahdeth[index]);
              },
              separatorBuilder:  (context,index)  =>  Container(color: Theme.of(context).primaryColor,
               width:double.infinity,
               height: 2,
                margin: EdgeInsets.symmetric(horizontal: 64),
                  ),
              itemCount: allahdeth.length),
        )

      ],
    );
  }

  List<Hadeth> allahdeth=[];

  void loadhadethfile()async{
    String filecontent=await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String>hadethlist = filecontent.trim().split("#");
    for(int i=0;i<hadethlist.length;i++)
      {
        String singlehadeth=hadethlist[i];
        List<String> hadethlines =singlehadeth.trim().split("\n");
        String title=hadethlines[0];
        hadethlines.remove(0);
        String content =hadethlines.join("\n");
        Hadeth hadeth=Hadeth(title, content);
        allahdeth.add(hadeth);

      }
    setState(() {

    });

  }
}
