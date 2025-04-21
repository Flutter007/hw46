import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String image;
  final double height;
  const ImageContainer({super.key, required this.image, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 80),
      child: Container(
        width: 330,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
