import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_kort_app/source/app_text_styles.dart';
import 'package:food_kort_app/source/images.dart';
import 'package:food_kort_app/source/style/app_colors.dart';
import 'package:food_kort_app/source/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
           padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.red,
                  AppColors.pink,
                ]),
          ),
          child: Stack(
            children: [
              //  SizedBox(
              //   height: MediaQuery.of(context).size.width,
              // ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 1.6,
                width: MediaQuery.of(context).size.width,
                child: SvgPicture.asset(AppSvg.medal,
                  alignment: Alignment.bottomCenter,
                  currentColor: Colors.transparent,),
              ),
              Align(
                alignment: Alignment.center,
                child: Stack(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(AppImages.cap),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                         borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                        // color: Colors.white,
                        height: 50,
                        width: 200,
                        child:  const Center(child: Text('Food Cort', style: AppTextStyle.textStyle36w700 ),),),
                  ],
                ),
              ),
               const SizedBox(
                 height: 50,
               ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(AppImages.glass),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
