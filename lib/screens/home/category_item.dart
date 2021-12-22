import 'package:flutter/material.dart';
import 'package:todo_list/shared/components/progress_bar.dart';
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
      height: 110,

      ///o height nesse caso controla a altura do box
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
          SizedBox(
            height: 12,
          ),

          ///foi criada a progressBar que fica dentro do boxItem no casoCategoryItem()
          ProgressBar(
            color: Vx.lightBlue500,
            percent: 10,
          ),
        ],
      ),
    );
  }
}
