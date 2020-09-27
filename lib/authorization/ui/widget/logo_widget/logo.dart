

import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      width: 100,
      height: 100,
      image: AssetImage('assets/icons/pen.png'),
    );
  }
}
