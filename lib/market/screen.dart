import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_kort_app/source/images.dart';
import 'package:food_kort_app/source/svg.dart';

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(23.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('bfhbffbc'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38, width: 1),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: const Center(child: Text('SEARcH')),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('bfhbffbc'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: SvgPicture.asset(AppSvg.burger, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('fdvdfv'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    // alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Image.asset(
                          AppImages.burger,
                          fit: BoxFit.cover,
                        )),
                        const Text('Burger'),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(AppSvg.star),
                            SvgPicture.asset(AppSvg.star),
                            SvgPicture.asset(AppSvg.star),
                            SvgPicture.asset(AppSvg.star),
                            SvgPicture.asset(AppSvg.star),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text('\u{0024} 25'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                AppImages.vegetables,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
