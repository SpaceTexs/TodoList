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
  ///criada essa finalWidth para fazer o calculo da porcentagem no progressBar

  final Duration duration = Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    const double finalWidth = 172;
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

        Stack(
          clipBehavior: Clip.none,
          children: [
            AnimatedContainer(
              duration: duration,
              curve: Curves.easeInOut,
              height: 4,
              width: widget.percent * finalWidth / 100,
              decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4),
                ),
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
            AnimatedPositioned(
              duration: duration,
              right: 0,
              top: -4,
              child: Container(
                width: 4,
                height: 4,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4),
                      topRight: Radius.circular(4)),
                ),
              ),
            ),
          ],
        ),

        ///esse AnimatedContainer responsavel pelo funcionamento da progressBar com esse calculo  width: widget.percent * finalWidth / 100
      ],
    );
  }
}
/*AnimatedContainer(
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
        ), */