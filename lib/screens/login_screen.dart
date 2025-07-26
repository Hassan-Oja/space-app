import 'package:flutter/material.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/utils/app_assets.dart';
import 'package:space/utils/app_colors.dart';
import 'package:space/utils/app_strings.dart';
import 'package:space/utils/app_styles.dart';
class LoginScreen extends StatelessWidget {
  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
              AppAssets.loginPlanet,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
         Padding(
           padding:  EdgeInsets.all(16.0),
           child: Center(
             child: Row(
               children: [
                 Text(
                   AppStrings.exploreTheUniverse,
                   style: AppStyles.white48inter,
                 ),
               ],
             ),
           ),
         ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: width * 0.04,
                vertical: height*0.02
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainColor
                ),
                  onPressed: (){
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          AppStrings.explore,
                      ),
                      Icon(Icons.arrow_forward)
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}

