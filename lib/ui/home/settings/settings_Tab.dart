import 'package:flutter/material.dart';
import 'package:islami/ui/home/settings/ThemeBottomSheet.dart';
import 'package:islami/ui/home/settings/LanguageBottomSheet.dart';
class SettingsTab extends StatefulWidget {


  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 64,
        horizontal: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Theme"),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
            child: Container(
              padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).primaryColor,
                    )
                ),
                child: Text("ligth",style: Theme.of(context).textTheme.titleMedium,
                )
            ),
          ),
          SizedBox(height:18 ,),
          Text("Language"),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
                padding: EdgeInsets.all(12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      width: 1,
                      color: Theme.of(context).primaryColor,
                    )
                ),
                child: Text("English",style: Theme.of(context).textTheme.titleMedium,
                )
            ),
          ),

        ],
      ),
    );
  }
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(context:context ,
    builder:(context){
      return LanguageBottomSheeet();
    } ,);
}

void showThemeBottomSheet(BuildContext context) {
  showModalBottomSheet(context:context ,
      builder:(context){
    return ThemeBottomSheet();
      } ,);
}


