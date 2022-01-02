import 'package:flutter/material.dart';
import 'package:para_yonetimi/core/components/container/random_color_container.dart';
import 'package:para_yonetimi/core/constants/image/image_constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child:
                  Container(child: Image.asset(ImageConstants.instance.logo))),
          const Expanded(flex: 5, child: RandomColorContainer()),
          Expanded(flex: 5, child: RandomColorContainer()),
        ],
      ),
    );
  }
}
