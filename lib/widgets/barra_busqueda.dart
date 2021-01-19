import 'package:flutter/material.dart';

class BarraBusqueda extends StatelessWidget {
  @required
  final String hint;
  @required
  final double width;

  const BarraBusqueda({Key key, this.hint, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  color: Colors.black38, blurRadius: 6, offset: Offset(1, 3))
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.search,
              color: Colors.black87,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hint,
                    hintStyle: TextStyle(
                      color: Colors.black87,
                    )),
              ),
            ),
          ],
        ));
  }
}
