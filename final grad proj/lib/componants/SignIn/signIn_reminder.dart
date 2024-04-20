import 'package:chat/componants/Buttons/main_button.dart';
import 'package:chat/utils/colors.dart';
import 'package:chat/utils/size_config.dart';
import 'package:flutter/material.dart';

class SignInReminder extends StatelessWidget {
  const SignInReminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        width: MySizeConfig.safeBlockHorizontal! * 100,
        height: MySizeConfig.safeBlockVerticalWithAppBar! * 30.5,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign in for the best experience',
                style: TextStyle(fontSize: 20),
              ),
              Center(
                  child: MainButton(
                      fontSize: 17,
                      fontWeight: FontWeight.w100,
                      fontColor: Colors.black,
                      buttonColor: MyColors.buttonColor,
                      text: 'Sign in securely')),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Create an account',
                    style: TextStyle(fontSize: 20, color: MyColors.mainColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
