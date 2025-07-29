// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

class CommonRoundedButton extends StatelessWidget {
  final VoidCallback onTap;
  final double width;
  final double height;
  final Color bgcolor;
  final String text;
  final String? iconpath;
  final Color? textColor;
  bool isOutlined;
  CommonRoundedButton({
    super.key,
    this.textColor = AppColors.blackColor,
    required this.text,
    this.iconpath,
    required this.onTap,
    this.width = 300,
    this.height = 50,
    this.bgcolor = AppColors.whiteColor,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isOutlined ? Colors.transparent : bgcolor,
          border: isOutlined
              ? Border.all(
                  color: isOutlined ? AppColors.whiteColor : Colors.transparent,
                  width: 1,
                )
              : null,
        ),
        child: iconpath != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 11.0),
                child: Row(
                  children: [
                    Image.asset(iconpath!, width: 30, height: 30),
                    Expanded(
                      child: Center(
                        child: Text(
                          text,
                          style: TextStyle(
                            color: textColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Center(
                child: Text(
                  text,
                  style: TextStyle(color: textColor,fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}
