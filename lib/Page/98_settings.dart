import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'src/sources.dart';
import '../sources.dart';

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  static final text_controller = List.generate(3, (index) => TextEditingController());

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    final my_spacing = SizedBox(
      height: MediaQuery.of(context).size.height * 0.02,
    );

    return Scaffold(
      body: DarkOne(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                top: MediaQuery.of(context).size.height * 0.02,
              ),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: MediaQuery.of(context).size.height * 0.03,
                  color: sources.color_TheOther.withOpacity(0.5),
                ),
              ),
            ),    // Back button
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.08,
                  horizontal: MediaQuery.of(context).size.width * 0.05,
                ),
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      const MyAvatar(),
                      Positioned(
                        bottom: 0,
                        right: MediaQuery.of(context).size.width * 0.28,
                        child: GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset("assets/Icon/settings_photo_edit.svg", width: MediaQuery.of(context).size.width * 0.1),
                        ),
                      ),
                    ],
                  ),    // Avatar and edit button
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  text_field(context, "Username", by_default: settings_info.username),
                  my_spacing,
                  text_field(context, "Full Name", by_default: settings_info.name),
                  my_spacing,
                  text_field(context, "Profile Bio", by_default: settings_info.biography),
                  my_spacing,
                  const TheButton(text: "Save"),
                ],
              ),
            ),     // Text fields
          ],
        ),
      ),
    );
  }
}

class ViaEditButton extends StatelessWidget {
  const ViaEditButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: MySettings(),
  );
}
