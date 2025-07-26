import 'package:flutter/material.dart';
import 'package:space/data/planet_data.dart';
import 'package:space/model/planets_list.dart';
import 'package:space/utils/app_strings.dart';
import 'package:space/utils/app_styles.dart';
import 'package:space/widgets/planet_information.dart';
import 'package:space/widgets/planet_title_widget.dart';
class PlanetDetails extends StatelessWidget {
  static const String routeName = 'planet_details';
  PlanetData? planet;
   PlanetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    planet = ModalRoute.of(context)!.settings.arguments as PlanetData ;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
            double.infinity,
            140
        ),
          child: PlanetTitleWidget(planet!.name, planet!.title)
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: width*0.048
        ),
        children: [
          Padding(
            padding:  EdgeInsets.only(top: height*0.1),
            child: Image.asset(planet!.image),
          ),
          Text(AppStrings.about, style: AppStyles.white24bOlb,),
           SizedBox(height: height*0.009,),
          Text(planet!.about, style: AppStyles.white16light,),
          SizedBox(height: height*0.009,),
          PlanetInformation(AppStrings.distanceFromSun, planet!.distanceFromSun),
          PlanetInformation(AppStrings.lengthOfDay, planet!.lengthOfDay),
          PlanetInformation(AppStrings.orbitalPeriod, planet!.orbitalPeriod),
          PlanetInformation(AppStrings.radius, planet!.radius),
          PlanetInformation(AppStrings.mass, planet!.mass),
          PlanetInformation(AppStrings.gravity, planet!.gravity),
          PlanetInformation(AppStrings.surfaceArea, planet!.surfaceArea),




        ],
      ),

    );
  }
}
