import 'package:flutter/material.dart';
import 'item_stepper.dart';
import 'separator_stepper.dart';

class CustomStepper extends StatelessWidget {
  final int length;
  final bool viajes;
  final double height;
  final int indexPage;

  const CustomStepper(
      {Key key, this.viajes, this.height, this.indexPage, this.length})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = List.generate(length, (i) {
      return Flexible(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SeparatorStepper(),
            ItemStepper(
              color: (this.indexPage + 1 >= i + 1) ? Colors.blue : Colors.white,
              textColor:
                  (this.indexPage + 1 >= i + 1) ? Colors.white : Colors.blue,
              index: i + 1,
            ),
            SeparatorStepper()
          ],
        ),
      );
    });
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: this.height,
      child: Row(
        children: items,
      ),
    );
  }
}
