import 'package:chat/utils/size_config.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MySizeConfig.safeBlockVerticalWithAppBar! * 7,
      decoration:
          const BoxDecoration(color: Color.fromARGB(170, 152, 225, 214)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            // SvgPicture.asset(
            //   'assets/icons/location.svg',
            //   width: MySizeConfig.safeBlockVerticalWithAppBar! * 2.5,
            // ),
            SizedBox(
              width: MySizeConfig.safeBlockVerticalWithAppBar! * 1,
            ),
            const Text(
              'Delever to Egypt',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
