import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

Widget mSpacer({double mheight = 11, double mwidth = 11}) =>
    SizedBox(height: mheight, width: mwidth);


InputDecoration getInputDecorationStyle() {
  return InputDecoration(
    filled: true,
    fillColor: AppColors.greyColor,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
    ),
    
  );
}
