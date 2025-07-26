import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
class PlanetInformation extends StatelessWidget {
  String title;
  String value;
   PlanetInformation(
       this.title , this.value , {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(
        '$title : $value',
        style: AppStyles.white16bold,
      ),
    );
  }
}
