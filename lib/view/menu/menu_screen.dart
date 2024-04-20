import 'package:chat/componants/custom_text_field.dart';
import 'package:chat/database/database_utils.dart';
import 'package:chat/ui/login/login_screen.dart';
import 'package:chat/utils/size_config.dart';
import 'package:chat/view/products/coffe.dart';
import 'package:chat/view/products/electronic_products.dart';
import 'package:chat/view/products/health_care.dart';
import 'package:chat/view/products/kindle.dart';
import 'package:chat/view/products/office_supplies.dart';
import 'package:chat/view/products/watches_products.dart';
import 'package:chat/view/search/search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        SingleChildScrollView(
          child: Positioned(
            top: 20,
            left: 10,
            child: Column(
              children: [
                const SearchWidget(),
                Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            String categoryId = '65527a31376a52ea210d9703';
                            List<Map<String, dynamic>> products =
                                await DatabaseUtils.getProductsByCategoryId(
                                    categoryId);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ElectronicProducts(products: products),
                              ),
                            );
                            //todo navigate & fetch data
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            width: MediaQuery.of(context).size.width * 40 / 100,
                            height:
                                MediaQuery.of(context).size.height * 20 / 100,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Electronics"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        height: 90,
                                        image: NetworkImage(
                                            'https://us.123rf.com/450wm/milkos/milkos1804/milkos180404622/100398146-photo-equipment-top-view-of-diverse-personal-equipment-for-photographer-or-creative-designer-copy.jpg?ver=6'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                        ),
                        GestureDetector(
                          onTap: () async {
                            String categoryId = '65527ac3376a52ea210d9706';
                            List<Map<String, dynamic>> products =
                                await DatabaseUtils.getProductsByCategoryId(
                                    categoryId);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    WatchesProducts(products: products),
                              ),
                            );
                            //todo navigate & fetch data
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            width: MediaQuery.of(context).size.width * 40 / 100,
                            height:
                                MediaQuery.of(context).size.height * 20 / 100,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Watches"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        height: 90,
                                        image: NetworkImage(
                                            'https://e7.pngegg.com/pngimages/758/778/png-clipart-pocket-watch-chronograph-watch-watch-accessory-accessories.png'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            String categoryId = '65527c22376a52ea210d9708';
                            List<Map<String, dynamic>> products =
                                await DatabaseUtils.getProductsByCategoryId(
                                    categoryId);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Coffe(products: products),
                              ),
                            );
                            //todo navigate & fetch data
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            width: MediaQuery.of(context).size.width * 40 / 100,
                            height:
                                MediaQuery.of(context).size.height * 20 / 100,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Coffee"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        height: 90,
                                        image: NetworkImage(
                                            'https://abuauf.com/Content/Products/6223006312609.jpg'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                        ),
                        GestureDetector(
                          onTap: () async {
                            String categoryId = '65527c8c376a52ea210d970a';
                            List<Map<String, dynamic>> products =
                                await DatabaseUtils.getProductsByCategoryId(
                                    categoryId);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    HealthCare(products: products),
                              ),
                            );
                            //todo navigate & fetch data
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            width: MediaQuery.of(context).size.width * 40 / 100,
                            height:
                                MediaQuery.of(context).size.height * 20 / 100,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Health & Personal Care"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        height: 90,
                                        image: NetworkImage(
                                            'https://images.unsplash.com/photo-1580870069867-74c57ee1bb07?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8c2tpbiUyMGNhcmUlMjBwcm9kdWN0c3xlbnwwfHwwfHx8MA%3D%3D'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 2 / 100,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            String categoryId = '6562f3891cf9fca552f8c5ac';
                            List<Map<String, dynamic>> products =
                                await DatabaseUtils.getProductsByCategoryId(
                                    categoryId);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    OfficeSupplies(products: products),
                              ),
                            );
                            //todo navigate & fetch data
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            width: MediaQuery.of(context).size.width * 40 / 100,
                            height:
                                MediaQuery.of(context).size.height * 20 / 100,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Office Supplies"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        height: 90,
                                        image: NetworkImage(
                                            'https://t4.ftcdn.net/jpg/01/71/29/69/360_F_171296908_MSoAaEodjrjJIgKG4pWJRK68xOHOIvyU.jpg'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 10 / 100,
                        ),
                        GestureDetector(
                          onTap: () async {
                            String categoryId = '65658ceae686c668a4d191ec';
                            List<Map<String, dynamic>> products =
                                await DatabaseUtils.getProductsByCategoryId(
                                    categoryId);

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    Kindle(products: products),
                              ),
                            );
                            //todo navigate & fetch data
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black),
                              color: Colors.transparent,
                            ),
                            width: MediaQuery.of(context).size.width * 40 / 100,
                            height:
                                MediaQuery.of(context).size.height * 20 / 100,
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Kindle"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        height: 90,
                                        image: NetworkImage(
                                            'https://m.media-amazon.com/images/I/41iU2dw4mWL._AC_SY400_.jpg'))
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
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
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
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
