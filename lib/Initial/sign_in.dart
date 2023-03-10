// // ignore_for_file: unused_import, camel_case_types, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unused_local_variable, non_constant_identifier_names

// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, camel_case_types, unused_local_variable, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_svg/svg.dart';
import '../sources.dart';

class Sign_in extends StatefulWidget {
  const Sign_in({super.key});

  @override
  State<Sign_in> createState() => _Sign_inState();
}

class _Sign_inState extends State<Sign_in> {
  @override
  Widget build(BuildContext context) {
    final screen_height = MediaQuery.of(context).size.height;
    final screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: screen_height,
              width: screen_width,
              child: Image.asset(
                sources.is_dark ? sources.background_profile_dark : sources.background_profile_light,
                fit: BoxFit.cover,
              ),
            ),
            ListView(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: EdgeInsets.only(
                        top: screen_height / 5, bottom: screen_height / 10),
                    height: screen_height / 8,
                    child: SvgPicture.asset(
                      "assets/Icon/main_gum.svg",
                    ),
                  ),
                ),      // Logo
                Align(
                  alignment: Alignment.center,
                  child: Text("Enter Your Phone Number",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      )),
                ),
                SizedBox(
                  height: screen_height / 70,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "We will send you one time password on this number",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                ),
                SizedBox(
                  height: screen_height / 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: IntlPhoneField(
                    cursorColor: Colors.white,
                    keyboardType: TextInputType.number,
                    initialCountryCode: 'PK',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.1),
                      prefixIconColor: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: screen_height * 0.15,
                ),
                TheButton(
                  text: "Send OTP",
                  aspect: 0.15,
                  onPressed: () => Navigator.pushNamed(context, route.verify),
                ),
                SizedBox(
                  height: screen_height * 0.05,
                ),
              ],
            )
          ],
        ));
  }
}
