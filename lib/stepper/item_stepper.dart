import 'package:flutter/material.dart';

class ItemStepper extends StatelessWidget {
  final int index;
  final Color color;
  final Color textColor;

  const ItemStepper({Key key, this.index, this.color, this.textColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 35, maxWidth: 40),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: this.color,
        border: Border.all(width: 2, color: Colors.blue),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        this.index.toString(),
        style: TextStyle(
            color: this.textColor, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}
