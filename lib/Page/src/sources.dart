import 'package:flutter/material.dart';
import '../../sources.dart';

class settings_info {
  static const name = "Bruce Wayne";
  static const username = "@i_am_batman";
  static const biography = "Your profile bio information along with status information will go here. You can also add a link to your website here, along with your social media links.";
}

final field_border_style = OutlineInputBorder(
  borderRadius: BorderRadius.circular(15),
  borderSide: BorderSide(
    color: Colors.white.withOpacity(0.7),
  ),
);

Widget text_field(BuildContext context, String label, {String by_default = ""}) => TextFormField(
  initialValue: by_default,
  style: sources.font_style(
    color: sources.color_TheOther,
    // fontSize: 18,
    fontSize: MediaQuery.of(context).size.width * 0.04,
  ),
  maxLines: null,
  cursorColor: sources.color_TheOther.withOpacity(0.7),
  decoration: InputDecoration(
    // Set some default text
    filled: true,
    fillColor: sources.is_dark ? sources.color_light.withOpacity(0.07) : sources.color_light,
    contentPadding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.05,
      vertical: MediaQuery.of(context).size.height * 0.02,
    ),
    labelText: label,
    labelStyle: sources.font_style(
      color: sources.color_TheOther.withOpacity(0.7),
      fontSize: 18,
    ),
    enabledBorder: field_border_style,
    focusedBorder: field_border_style,
  ),
);

class MyAvatar extends StatelessWidget {
  const MyAvatar({this.aspect = 0.2, Key? key}) : super(key: key);

  final double aspect;

  @override
  Widget build(BuildContext context) => Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.white,

        // According to aspect
        width: MediaQuery.of(context).size.width * aspect * 0.07,
      ),
    ),
    child: CircleAvatar(
      foregroundImage: const AssetImage("assets/Placeholder/P2.png"),
      radius: MediaQuery.of(context).size.width * aspect,
    ),
  );
}

class Tweets extends StatelessWidget {
  const Tweets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      itemBuilder: (context, index) => const TheCard(),
    );
  }
}
