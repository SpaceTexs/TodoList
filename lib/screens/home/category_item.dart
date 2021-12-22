import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:todo_list/constantes.dart';

class Categoryitem extends StatelessWidget {
  const Categoryitem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        padding: EdgeInsets.symmetric(
            horizontal: k.defaulPadding, vertical: k.defaulPadding),
        decoration: BoxDecoration(
            color: Vx.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 10,
                spreadRadius: -5,
                color: Vx.gray500.withOpacity(0.1),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '40 tasks'.text.color(k.defaultGray).make(),
            'Business'.text.xl2.make(),
          ],
        ));
  }
}
