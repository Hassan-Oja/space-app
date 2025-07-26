import 'package:flutter/material.dart';
import '../utils/app_assets.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';
class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Image.asset(AppAssets.halfEarth),
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
                  Text(
                    AppStrings.explore,
                    style: AppStyles.white24bOlb,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          AppStrings.homeTitleQuestion,
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
