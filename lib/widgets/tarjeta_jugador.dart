import 'package:flutter/material.dart';

class TarjetaJugador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://jcmagazine.com/wp-content/uploads/2020/08/asus-gamers.jpg',
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                "Nombre del jugador",
                style: Theme.of(context).textTheme.headline3,
              ),
              Row(
                children: [
                  Text(
                    "Nicname",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "PedritoFire",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Fama",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "100Xp",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ],
          ),
          IconButton(
              icon: Icon(
                Icons.flash_on,
                color: Colors.deepPurpleAccent,
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
