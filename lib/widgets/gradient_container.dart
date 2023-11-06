import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  final Widget child;

  const GradientContainer({super.key, required this.child});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color(0xff002527),
            Color(0xff073a3d),
            Color(0xff135154),
            Color(0xff1f696c),
            Color(0xff2c8286),
            Color(0xff399ba0),
            Color(0xff47b6bb),
            Color(0xff55d1d7),
          ],
          tileMode: TileMode.mirror,
        ),
      ),
      child: widget.child,
    );
  }
}
