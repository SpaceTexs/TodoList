import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';
import 'package:todo_list/constantes.dart';

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(k.defaulPadding),
      child: text.text.xl4.extraBold.blueGray800.make(),
    );
  }
}
