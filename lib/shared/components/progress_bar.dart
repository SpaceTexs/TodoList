import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProgressBar extends StatefulWidget {
  ///foi criada a progressBar que fica dentro do boxItem no [casoCategoryItem()]
  final Color color;
  final double percent;
  const ProgressBar({
    Key? key,
    required this.color,
    required this.percent,
  }) : super(key: key);

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  final double finalWidth = 172;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 4,
          width: finalWidth,
          decoration: BoxDecoration(
            color: Vx.blueGray200.withOpacity(0.7),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        AnimatedContainer(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          height: 4,
          width: widget.percent * finalWidth / 100,
          decoration: BoxDecoration(
            color: widget.color,
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
