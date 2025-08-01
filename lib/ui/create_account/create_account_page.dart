import 'package:flutter/material.dart';
import 'package:spotify_clone/domain/app_colors.dart';
import 'package:spotify_clone/domain/app_routes.dart';
import 'package:spotify_clone/ui/custom_widget/common_rounded_button.dart';

import '../custom_widget/ui_helper.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
int selectedIndex = 0;
  List<Widget> allPages = [];
  bool isPP1selected = false;
  bool isPP2selected = false;
  
  @override
  void initState() {
    super.initState();
   allPages = [
      stepOneUI(),
      stepTwoUI(),
      stepThreeUI(),
      stepFourUI(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Create Account',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.blackColor,
        leading: InkWell(
          onTap: () {
           if(selectedIndex > 0) {
              setState(() {
                selectedIndex--;
              });
            } else {
              Navigator.pop(context);
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              'assets/svg/Left-1.png',
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            allPages[selectedIndex],
            mSpacer(mheight: 21),
            CommonRoundedButton(
              text:selectedIndex<3? 'Next':"Create an Account",
              onTap: () {
                if(selectedIndex < allPages.length - 1) {
                  setState(() {
                    selectedIndex++;
                  });
                } else {
                  Navigator.pushNamed(context, AppRoutes.chooseSinger);
                  // Handle account creation logic here
                }
              },
              bgcolor: AppColors.whiteColor,
              width:selectedIndex<3? 100:180,
            ),
          ],
        ),
      ),
    );
  }

  Widget stepOneUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What\'s your email?',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(color: AppColors.whiteColor),
          cursorColor: AppColors.whiteColor,
          decoration: getInputDecorationStyle(),
        ),
        SizedBox(height: 10),
        Text(
          'You will need to confirm later',
          style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
        ),
      ],
    );
  }

  Widget stepTwoUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Create a Password',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        TextField(
          style: TextStyle(color: AppColors.whiteColor),
          cursorColor: AppColors.whiteColor,
          decoration: getInputDecorationStyle(),
        ),
        SizedBox(height: 10),
        Text(
          'Use atleast 8 characters',
          style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
        ),
      ],
    );
  }

  Widget stepThreeUI() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What\'s your Gender?',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Wrap(
          runAlignment: WrapAlignment.spaceEvenly,
          runSpacing: 11,
          spacing: 11,
          children: [
            CommonRoundedButton(
              width: 100,
              height: 34,
              isOutlined: true,
              textColor: AppColors.whiteColor,
              bgcolor: AppColors.primaryColor,
              text: 'Male',
              onTap: () {},
            ),
            CommonRoundedButton(
              width: 100,
              height: 34,
              isOutlined: true,
              textColor: AppColors.whiteColor,
              bgcolor: AppColors.primaryColor,
              text: 'Female',
              onTap: () {},
            ),
            CommonRoundedButton(
              width: 100,
              height: 34,
              isOutlined: true,
              textColor: AppColors.whiteColor,
              bgcolor: AppColors.primaryColor,
              text: 'Other',
              onTap: () {},
            ),
            CommonRoundedButton(
              width: 150,
              height: 34,
              isOutlined: true,
              textColor: AppColors.whiteColor,
              bgcolor: AppColors.primaryColor,
              text: 'not prefer to say',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }

  Widget stepFourUI() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'What\'s your name?',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            style: TextStyle(color: AppColors.whiteColor),
            cursorColor: AppColors.whiteColor,
            decoration: getInputDecorationStyle(),
          ),
          SizedBox(height: 10),
          Text(
            'This appear on your spotify profile',
            style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
          ),
          mSpacer(mheight: 21),
          Divider(color: AppColors.greyColor, height: 1),
          mSpacer(),
          Text(
            'By Tapping "Create Account" you agree to Spotify\'s terms of use',
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.whiteColor, fontSize: 13),
          ),
          mSpacer(mheight: 21),
          Text(
            'Terms of use',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 12),
          ),
          mSpacer(),
          Text(
            'To learn more about spotify collect,uses, and shares your data, please see our privacy policy.',
            style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
          ),
          mSpacer(mheight: 21),
          Text(
            'Privacy Policy',
            style: TextStyle(color: AppColors.primaryColor, fontSize: 12),
          ),
          mSpacer(mheight: 21),
          RadioListTile.adaptive(
            controlAffinity: ListTileControlAffinity.trailing,
            value: isPP1selected,
            groupValue: false,
            onChanged: (value) {
              setState(() {
                isPP1selected = value!;
              });
            },
            title: Text(
              'please send me news and offers from spotify',
              style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
            ),
          ),
          mSpacer(),
          RadioListTile.adaptive(
            controlAffinity: ListTileControlAffinity.trailing,
            value: isPP2selected,
            groupValue: false,
            onChanged: (value) {
              setState(() {
                isPP2selected=value!;
              });
            },
            title: Text(
              'share my registration data with Spotify\'s content providers for marketing purposes',
              style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
