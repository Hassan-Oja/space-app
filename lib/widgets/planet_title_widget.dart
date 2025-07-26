import 'package:flutter/material.dart';

import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';
class PlanetTitleWidget extends StatelessWidget {
  String name;
  String title ;
  PlanetTitleWidget(this.name , this.title , {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(AppAssets.halfEarth , width: double.infinity, fit: BoxFit.cover,),
        Positioned.fill(
          child: Container(
            decoration:BoxDecoration(
                gradient: LinearGradient(
                    colors: [AppColors.black , AppColors.black.withOpacity(0.5), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter
                )
            ),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            name ,
                            textAlign: TextAlign.center,
                            style: AppStyles.white24bOlb,
                          )
                        ],
                      ),
                      Positioned(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder()
                            ),
                              onPressed: (){
                              Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back)
                          )
                      )
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          title ,
                          style: AppStyles.white24bOlb,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
