import 'package:flutter/material.dart';

class CustomSizeBox extends StatelessWidget {
  double? height;
  double? width;
   CustomSizeBox({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}
