import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/ui/custom_widget/circular_img_bg.dart';

import '../custom_widget/ui_helper.dart' show getSearchDecorationStyle;

class ChooseSingerPage extends StatelessWidget {
  List<Map<String, dynamic>> singers = [
    {'name': 'Singer 1', 'image': 'assets/images/image 11.png'},
    {'name': 'Singer 2', 'image': 'assets/images/image 12.png'},
    {'name': 'Singer 3', 'image': 'assets/images/image 13.png'},
    {'name': 'Singer 4', 'image': 'assets/images/image 14.png'},
    {'name': 'Singer 1', 'image': 'assets/images/image 11.png'},
    {'name': 'Singer 2', 'image': 'assets/images/image 12.png'},
    {'name': 'Singer 3', 'image': 'assets/images/image 13.png'},
    {'name': 'Singer 4', 'image': 'assets/images/image 14.png'},
    {'name': 'Singer 1', 'image': 'assets/images/image 11.png'},
    {'name': 'Singer 2', 'image': 'assets/images/image 12.png'},
    {'name': 'Singer 3', 'image': 'assets/images/image 13.png'},
    {'name': 'Singer 4', 'image': 'assets/images/image 14.png'},
    {'name': 'Singer 1', 'image': 'assets/images/image 11.png'},
    {'name': 'Singer 2', 'image': 'assets/images/image 12.png'},
    {'name': 'Singer 3', 'image': 'assets/images/image 13.png'},
    {'name': 'Singer 4', 'image': 'assets/images/image 14.png'},
    {'name': 'Singer 1', 'image': 'assets/images/image 11.png'},
    {'name': 'Singer 2', 'image': 'assets/images/image 12.png'},
    {'name': 'Singer 3', 'image': 'assets/images/image 13.png'},
    {'name': 'Singer 4', 'image': 'assets/images/image 14.png'},
    // Add more singers as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.blackColor,
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Choose 3 or more singers you like',
                style: TextStyle(
                  fontSize: 25,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(decoration: getSearchDecorationStyle()),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 21.0),
                  child: Stack(
                    children: [
                      GridView.builder(
                        itemCount: singers.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 11,
                          crossAxisSpacing: 11,
                        ),
                        itemBuilder: (_, index) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CircularImgBg(
                                mheight: 80,
                                mwidth: 80,
                                imagePath: singers[index]['image'],
                              ),

                              Text(
                                singers[index]['name'],
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: 11,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                AppColors.blackColor.withOpacity(0.8),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
