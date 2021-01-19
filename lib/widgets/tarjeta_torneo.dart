import 'package:flutter/material.dart';

class TarjetaTorneo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(
            "https://www.faq-mac.com/wp-content/uploads/2013/05/juego_black_ops_mac_39397_640.jpg",
            height: 60,
            width: 60,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "Nombre del torneo",
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                children: [
                  Text(
                    "Premio total:",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$20.000.000",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Empieza el",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "12-10-2020",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.bookmark,
                color: Colors.deepOrangeAccent,
              ),
              onPressed: () {}),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(2, 3),
                blurRadius: 1,
                spreadRadius: 1)
          ]),
    );
  }
}
