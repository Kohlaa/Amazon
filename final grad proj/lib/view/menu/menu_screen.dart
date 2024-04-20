import 'package:chat/componants/custom_text_field.dart';
import 'package:chat/ui/login/login_screen.dart';
import 'package:chat/utils/size_config.dart';
import 'package:chat/view/search/search_widget.dart';
import 'package:flutter/material.dart';

import '../../componants/Buttons/custom_button.dart';
import '../../componants/custom_clipper.dart';
import '../../componants/custom_textfield_withflag.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 131, 217, 226),
                Color.fromARGB(150, 164, 229, 207),
                Color.fromARGB(100, 233, 248, 243),
                // Color(0x0086d9e0),
                // Color(0x00a3e6cf),
              ],
            ),
          ),
        ),
        //widgets @@@@@@@@@
        Positioned(
          top: 20,
          left: 10,
          child: Column(
            children: [
              const SearchWidget(),
              CustomTextField(
                text: 'Shop by Department',
                icon: Icons.keyboard_arrow_down,
                iconSize: 35,
              ),
              CustomTextFlagField(
                text: 'Settings',
                icon: Icons.keyboard_arrow_down,
                iconSize: 35,
              ),
              CustomTextField(
                text: 'Customer Service',
                icon: Icons.keyboard_arrow_right,
                iconSize: 35,
              ),
              CustomTextField(
                  text: 'Sign In',
                  icon: Icons.keyboard_arrow_right,
                  iconSize: 35,
                  onClicked: () {
                    print("Login");
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.routeName);
                  }),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: MySizeConfig.safeBlockHorizontal! * 100,
            height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 15,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Orders',
                  radiusCount: 7,
                ),
                SizedBox(
                  width: MySizeConfig.safeBlockHorizontal! * 2,
                ),
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 22,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Buy Again',
                  radiusCount: 7,
                ),
                SizedBox(
                  width: MySizeConfig.safeBlockHorizontal! * 2,
                ),
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 18,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Account',
                  radiusCount: 7,
                ),
                SizedBox(
                  width: MySizeConfig.safeBlockHorizontal! * 2,
                ),
                CustomRoundedButton(
                  width: MySizeConfig.safeBlockHorizontal! * 12,
                  height: MySizeConfig.safeBlockVerticalWithOutAppBar! * 4.5,
                  text: 'Lists',
                  radiusCount: 7,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}



/**
 * 
 * 
 * 
 * ClipPath(
          clipper: MycustomClipper(),
          child: Container(
            decoration: BoxDecoration(color: Colors.black),
            width: 500,
            height: 500,
            child: Text('data'),
          ),
        ),
 */