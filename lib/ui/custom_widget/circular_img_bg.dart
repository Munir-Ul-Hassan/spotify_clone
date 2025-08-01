import 'package:flutter/material.dart';

class CircularImgBg extends StatelessWidget {
  final double mwidth;
  final double mheight;
  final String imagePath;
  const CircularImgBg({super.key,this.mwidth = 100, this.mheight = 100,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: mwidth,
      height: mheight,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imagePath),
          
        ),
        
       
      ),
    );
  }
}