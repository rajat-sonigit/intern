import 'package:flutter/material.dart';

class Gri extends StatelessWidget {
  const Gri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 5,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imga.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgb.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgc.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgd.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imge.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgaa.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgbb.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgcc.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgdd.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgee.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgc.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imga.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgd.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imge.png',
              width: 3,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/imgb.png',
              width: 3,
              height: 3,
            ),
          ),
        ],
      ),
    );
  }
}
