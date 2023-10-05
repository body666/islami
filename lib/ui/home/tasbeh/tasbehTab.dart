import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int counter=0;
  double angle=0;
  int currentindex=0;
List<String> text =[
  "سيحان الله",
  "الحمد لله",
  "الله اكبر",
];

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
            Container(
               margin: EdgeInsets.only(top:size.height*0.09),
                child: Transform.rotate(
                  angle: angle,
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: InkWell(
                      onTap: (){
                        clickonimage();
                      },
                      child: Image.asset("assets/images/body of seb7a.png",
                        height: size.height*0.20,),
                    ),
                  ),
                )),
              Container(
                margin: EdgeInsets.only(left: size.height*0.05),
                child: Image.asset("assets/images/head of seb7a.png",
                  height: size.height*0.10,),
              ),
            ],
          ),
         const SizedBox(height: 30,),
          Text("عدد التسبيحات",
            textAlign: TextAlign.center,
            style:
            TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text("$counter",
              textAlign: TextAlign.center,
              style:
              TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 100),
            height: 50,
            decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(25)
            ),
            child: Text(
            text[currentindex],
              textAlign: TextAlign.center,
              style:
              TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),

        ],
      ),
    );
  }
  void clickonimage(){
    angle+=3;

    if(counter==33){
      counter=0;
      currentindex++;
      if(currentindex>2)
        {
          currentindex=0;
        }
    }
    counter++;

    setState(() {

    });
  }
}
