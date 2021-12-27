import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:todo_list/constantes.dart';
import 'package:todo_list/screens/home/components/home_screen.dart';

class TopBar extends StatelessWidget {
  TopBar({ this.onToggleMenu});

  final VoidCallback? onToggleMenu;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: k.defaulPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onToggleMenu,
            icon: Icon(
              Icons.menu,
              color: k.defaultGray,
              size: k.iconSize,
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: k.defaultGray,
                  size: k.iconSize,
                ),
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: k.defaultGray,
                  size: k.iconSize,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
