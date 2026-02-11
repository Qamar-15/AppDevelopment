import 'package:flutter/material.dart';

class cb1 extends StatelessWidget {
  cb1({super.key, required this.colors1, this.text1});

  List<Color> colors1;
  final String? text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors1,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          text1 ?? 'Null Value Constructor',
          style: TextStyle(
            color: Color.fromRGBO(255, 5, 5, 0.89),
            fontSize: 25,
            fontFamily: 'BitcountSingle',
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
