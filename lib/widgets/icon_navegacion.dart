import 'package:flutter/material.dart';

class IconNavegacion extends StatelessWidget {
  final Icon icon;
  final Function onTap;

  const IconNavegacion({Key key, this.icon, @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        child: icon,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
