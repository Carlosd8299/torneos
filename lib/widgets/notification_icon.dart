import 'package:flutter/material.dart';

class Notificacion extends StatelessWidget {
  final Function onTap;
  final bool hasNotification;

  const Notificacion({
    Key key,
    @required this.onTap,
    @required this.hasNotification,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            hasNotification
                ? Icons.notifications_on_outlined
                : Icons.notifications_outlined,
            color: Colors.black,
            size: 30,
          ),
          onPressed: onTap,
        ),
        hasNotification
            ? Positioned(
                left: 10,
                top: 5,
                child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        shape: BoxShape.circle)))
            : SizedBox.shrink()
      ],
    );
  }
}
