import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:todo_list/constantes.dart';

class TaskItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: k.defaulPadding),
        child: Container(
          padding: EdgeInsets.all(k.defaulPadding),
          margin: EdgeInsets.symmetric(horizontal: k.defaulPadding),
          decoration: BoxDecoration(
            color: Vx.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 18,
                spreadRadius: -5,
                color: Vx.blueGray200,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 2, color: Colors.blue),
                    borderRadius: BorderRadius.circular(24)),
              ),
              SizedBox(width: k.defaulPadding),
              'Daily meeting with team'.text.size(18).medium.coolGray600.make(),
            ],
          ),
        ),
      ),
    );
  }
}
