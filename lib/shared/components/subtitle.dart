import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:todo_list/constantes.dart';

class Subtitle extends StatelessWidget {
  const Subtitle({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: k.defaulPadding),
      child: text.text.uppercase.bold.color(k.defaultGray).make(),
    );
  }
}
