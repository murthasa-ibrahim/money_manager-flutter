import 'package:flutter/material.dart';

class GradientIcon extends Icon {
  const GradientIcon(super.icon,
      {super.key, super.size, super.color,super.semanticLabel,super.shadows,su});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => const LinearGradient(colors: [
        Color.fromARGB(255, 236, 203, 104),
        Colors.white,
        Color.fromARGB(255, 236, 203, 104),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight,stops: [0.4,0.6,1])
          .createShader(rect),
      child: super.build(context),
    );
  }
}
class GI extends StatelessWidget {
  const GI({Key? key, required this.icon, required this.size}) : super(key: key);
final IconData icon;
final double? size;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) => const LinearGradient(colors: [
        Color.fromARGB(255, 236, 203, 104),
        Colors.white,
        Color.fromARGB(255, 236, 203, 104),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight,stops: [0.4,0.6,1])
          .createShader(rect),
      child: Icon(icon,size: size,),
    );
  }
}
