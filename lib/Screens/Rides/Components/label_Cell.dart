import 'package:flutter/material.dart';

class RowCell extends StatelessWidget {
  String rowText;
  RowCell({
    required this.rowText
  });

  @override
  Widget build(BuildContext context) {
    return Text(rowText,
        style: const TextStyle(color: Colors.white,
      fontSize: 14,));
  }
}

class ColumeLabel extends StatelessWidget {
  String text;
  ColumeLabel({
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(text,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,)),
      ),
    );
  }
}
