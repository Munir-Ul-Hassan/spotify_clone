import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';

import '../custom_widget/ui_helper.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Create Account', style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold)),
        backgroundColor: AppColors.blackColor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset('assets/svg/Left-1.png',color: AppColors.whiteColor,
              
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What\'s your email?', style: TextStyle(color: AppColors.whiteColor, fontSize: 25, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
              style: TextStyle(color: AppColors.whiteColor),
              cursorColor: AppColors.whiteColor,
              decoration: getInputDecorationStyle(),
            ),
            SizedBox(height: 10),
            Text('You will need to confirm later', style: TextStyle(color: AppColors.whiteColor, fontSize: 12)),
           
          ],
        ),
      ),
    );
  }
}