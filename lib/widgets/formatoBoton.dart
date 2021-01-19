import 'package:flutter/material.dart';

class Tbuton extends StatelessWidget {
  final Function function;
  final Text label;
  final Color color;
  final double width;

  const Tbuton(
      {Key key,
      @required this.function,
      @required this.label,
      @required this.color,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        width: width == null ? double.infinity : width,
        padding: EdgeInsets.all(12),
        child: label,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38, blurRadius: 6, offset: Offset(1, 3))
            ]),
      ),
      onTap: function,
    );
  }
}
