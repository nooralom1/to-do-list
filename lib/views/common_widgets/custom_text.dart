import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final String tittle;
  final Color? tColor;
  final FontWeight? tWeight;
  final double? tSize;

  const TextWidget({
    super.key,
    required this.tittle,
    this.tColor,
    this.tWeight,
    this.tSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(tittle,
        style: TextStyle(fontSize: tSize, fontWeight: tWeight, color: tColor));
  }
}
