import 'package:flutter/material.dart';
import 'package:todo_list/screens/home/category_item.dart';
import 'package:todo_list/constantes.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          SizedBox(
            width: k.defaulPadding,
          ),

          ///cria uma lista de 5 CategoryItem()
          ...List.generate(
            5,
            (index) => Row(
              children: [
                CategoryItem(),
                SizedBox(width: k.defaulPadding / 2),
              ],
            ),
          ),
          SizedBox(width: k.defaulPadding / 2),
        ],
      ),
    );
  }
}
