import 'package:flutter/material.dart';

class ImageGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: schoolsList.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
        itemBuilder: (context, index) => Image.asset(
              schoolsList[index],
              width: 100,
              height: 100,
            ));
  }

  List<String> schoolsList = [
    'assets/imga.png',
    'assets/imgb.png',
    'assets/imgc.png',
  ];
}
