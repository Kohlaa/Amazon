import 'package:chat/utils/size_config.dart';
import 'package:flutter/material.dart';

class SuggestWedget extends StatelessWidget {
  const SuggestWedget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 100,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 20,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                'Shop Computers \n& Accessoies',
                style: TextStyle(fontSize: 18),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(100, 130),
                  bottomLeft: Radius.elliptical(100, 130)),
              child: Image.asset(
                'assets/images/computer.jpg',
                // scale: 0.3,
                // height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
