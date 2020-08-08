import 'package:flutter/material.dart';

class SeparatorStepper extends StatelessWidget {
  final double height;

  const SeparatorStepper({Key key, this.height = 2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: this.height,
        color: Colors.blue,
      ),
    );
  }
}
