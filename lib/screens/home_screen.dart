import 'package:flutter/material.dart';
import 'package:space/model/planets_list.dart';
import 'package:space/screens/planet_details.dart';
import 'package:space/utils/app_strings.dart';
import 'package:space/utils/app_styles.dart';
import 'package:space/widgets/title_widget.dart';


class HomeScreen extends StatefulWidget {

  static const String routeName = 'home_screen';

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState(){
    super.initState();
    pageController.addListener(changePlanet);
  }
  int index = 0 ;
  PageController  pageController = PageController( initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TitleWidget(),
          Expanded(
            child: PageView.builder(
              controller: pageController,
             itemBuilder: (context , index) => Image.asset(PlanetsList.planetsList[index%9].image)
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder()
                  ),
                    onPressed: (){
                    if(pageController.page!.toInt() == 0){
                      return ;
                    }
                    pageController.animateToPage(
                        pageController.page!.toInt()-1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                    },
                    child: Icon(Icons.arrow_back)
                ),
                Text(
                  PlanetsList.planetsList[index].name,
                  style: AppStyles.white24bOlb,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder()
                    ),
                    onPressed: (){
                      pageController.animateToPage(
                          pageController.page!.toInt()+1, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
                    },
                    child: Icon(Icons.arrow_forward)
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, PlanetDetails.routeName , arguments: PlanetsList.planetsList[index ]);
                },
                child: Row(
                  children: [
                    Text(
                      '${AppStrings.explore} ${PlanetsList.planetsList[index].name}'
                    ),
                    Spacer(),
                    Icon(Icons.arrow_forward)
                  ],
                )
            ),
          )
        ],
      ),
    );
  }

  void changePlanet(){
    if(pageController.page!%1 ==0){
      index = pageController.page!.toInt()%9;
      setState(() {

      });
    }
  }
}