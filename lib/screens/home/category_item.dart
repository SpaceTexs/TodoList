import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:todo_list/constantes.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
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
          'Business'.text.xl2.bold.make(),
          ProgressBar(color: Vx.purple300),
        ],
      ),
    );
  }
}

class ProgressBar extends StatelessWidget {
  final Color color;
  const ProgressBar({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 4,
          width: 172,
          decoration: BoxDecoration(
            color: Vx.blueGray200,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: 4,
          width: 80,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 3,
                spreadRadius: -5,
                color: Vx.blue500.withOpacity(0.25),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
