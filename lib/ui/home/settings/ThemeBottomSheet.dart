import 'package:flutter/material.dart';
class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        getSelectedItem("Light"),
          getSelectedItem("Dark"),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
return  Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Icon(Icons.check,
      color: Theme.of(context).colorScheme.secondary,
    ),
    Text(text,
        style:Theme.of(context).textTheme.titleMedium?.copyWith(color:Theme.of(context).colorScheme.secondary)
    ),
  ],
);
  }

  Widget getUnSelectedItem(String text) {
  return  Text(text,style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
